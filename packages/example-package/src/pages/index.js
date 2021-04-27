
import * as React from "react";
import { Link } from "gatsby";

import { StaticImage } from "gatsby-plugin-image";

// styles
const pageStyles = {
  color: "#232129",
  padding: "96px",
  fontFamily: "-apple-system, Roboto, sans-serif, serif",
}
const headingStyles = {
  marginTop: 0,
  marginBottom: 64,
  maxWidth: 320,
}

const paragraphStyles = {
  marginBottom: 48,
}
const codeStyles = {
  color: "#8A6534",
  padding: 4,
  backgroundColor: "#FFF4DB",
  fontSize: "1.25rem",
  borderRadius: 4,
}

// markup
const IndexPage = () => {
  return (
    <main style={pageStyles}>
      <title>Not found</title>
      <h1 style={headingStyles}>Architecture</h1>
			<StaticImage src="../images/arch-1.jpg" />
			<StaticImage src="../images/arch-2.jpg" />
			<StaticImage src="../images/arch-3.jpg" />
    </main>
  )
}

export default IndexPage
