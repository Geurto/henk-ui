import Lines from "../img/lines.png"
import "../css/main.css"

export default function Welcome() {
    return (
        <>
            <div className="wrapper">
                <h1>HENK-9000</h1>
                <p>d e . t a n k</p>
                <img src={Lines} alt={"Mooie lijnen"} width={512} height={256} />
            </div>
        </>
    );
}