<%
  if ("Exception".equals(request.getParameter("throw"))) {
      throw new Exception("Exception was thrown");
  }

  if ("RuntimeException".equals(request.getParameter("throw"))) {
    throw new RuntimeException("RuntimeException was thrown");
}
%>
<html>

<head>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>

<body class="container">

    <h3>Tomcat Info</h3>

    <p>
        Exception handling: 
        <a href="?throw=Exception">throw an Exception</a> |
        <a href="?throw=RuntimeException">throw a RuntimeException</a>
    </p>

    <table class="table">
        <tbody>
            <tr>
                <td>Server info</td>
                <td>
                    <%= application.getServerInfo() %>
                </td>
            </tr>
        </tbody>
    </table>

    <h3>Java Info</h3>

    <table class="table">
        <tbody>
            <tr>
                <td>OS Name</td>
                <td>
                    <%= System.getProperty("os.name") %>
                </td>
            </tr>
            <tr>
                <td>OS Version</td>
                <td>
                    <%= System.getProperty("os.version") %>
                </td>
            </tr>
            <tr>
                <td>OS Arch</td>
                <td>
                    <%= System.getProperty("os.arch") %>
                </td>
            </tr>
            <tr>
                <td>JVM version</td>
                <td>
                    <%= System.getProperty("java.runtime.version") %>
                </td>
            </tr>
            <tr>
                <td>java.version</td>
                <td>
                    <%= System.getProperty("java.version") %>
                </td>
            </tr>
            <tr>
                <td>JVM Vendor</td>
                <td>
                    <%= System.getProperty("java.vm.vendor") %>
                </td>
            </tr>
            <tr>
                <td>Current Date</td>
                <td>
                    <%= new java.util.Date() %>
                </td>
            </tr>
            <tr>
                <td>Host name</td>
                <td>
                    <%= System.getenv("HOSTNAME") %>
                </td>
            </tr>
        </tbody>
    </table>

    <h3>System properties</h3>

    <table class="table">
        <tbody>
        <%
            for (String propName: System.getProperties().stringPropertyNames()) {
        %>
            <tr>
                <td><%= propName %></td>
                <td>
                    <%= System.getProperty(propName) %>
                </td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>

    <h3>Request Headers</h3>

    <table class="table">
        <tbody>
        <%
            for (String header: request.getHeaderNames()) {
        %>
            <tr>
                <td><%= header %></td>
                <td>
                    <%= request.getHeader(header) %>
                </td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>

</body>

</html>
