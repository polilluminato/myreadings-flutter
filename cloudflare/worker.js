export default {
   async fetch(request, env) {
      return await handleRequest(request, env)
   }
}

function getCorsHeaders(request) {
   return {
      "Access-Control-Allow-Origin": request.headers.get("Origin"),
      "Access-Control-Allow-Methods": "GET, HEAD, POST, PUT, OPTIONS",
      "Access-Control-Allow-Headers": "Content-Type",
   };
}

function handleOptions(request) {
   return new Response(null, {
      headers: getCorsHeaders(request),
   });
}

async function handleRequest(request, env) {
   if (request.method === "OPTIONS") {
      return handleOptions(request);
   }

   const requestUrl = `${env.NOTION_BASE_URL}/${env.NOTION_DB_BOOKS}/query`;
   const requestBody = {
      "page_size": 100,
      "sorts": [
         { "property": "Finished", "direction": "ascending" },
         { "property": "Progress", "direction": "descending" },
         { "property": "Date", "direction": "descending" }
      ]
   };

   let notionResponse = await fetch(requestUrl, {
      body: JSON.stringify(requestBody),
      headers: {
         "Content-Type": "application/json; charset=utf-8",
         "Authorization": "Bearer " + env.NOTION_SECRET_KEY,
         "Notion-Version": env.NOTION_API_VERSION,
      },
      method: "POST",
   });

   return new Response(notionResponse.body, {
      headers: { "Content-Type": "application/json", ...getCorsHeaders(request) },
      status: notionResponse.status,
      statusText: notionResponse.statusText
   });
}