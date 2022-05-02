extern crate dotenv;

use color_eyre::eyre::Result;
use dotenv::dotenv;
use weatherstation_api::establish_connection;

fn main() -> Result<()> {
    color_eyre::install()?;
    dotenv().ok();

    let mut _conn = establish_connection();

    Ok(())
}
