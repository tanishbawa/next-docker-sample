import Image from "next/image";
import styles from "./page.module.css";

export default function Home() {
  return (
    <main className={styles.main}>
      <div>Hello</div>
      <div>This is a sample next app for docker testing</div>
    </main>
  );
}
