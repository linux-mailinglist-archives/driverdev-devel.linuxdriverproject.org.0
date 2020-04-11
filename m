Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4855D1A4DA3
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 05:43:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DB3732202C;
	Sat, 11 Apr 2020 03:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3BpGEQ6dyz2E; Sat, 11 Apr 2020 03:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1A3B120487;
	Sat, 11 Apr 2020 03:43:52 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A3791BF9B4
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 03:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F1542860A2
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 03:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bR4KMdEBpxXn
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 03:43:49 +0000 (UTC)
X-Greylist: delayed 00:17:29 by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD2DB86072
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 03:43:48 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 8A306AC46;
 Sat, 11 Apr 2020 03:26:16 +0000 (UTC)
From: NeilBrown <neil@brown.name>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 gregkh@linuxfoundation.org
Date: Sat, 11 Apr 2020 13:26:11 +1000
Subject: Re: [PATCH] staging: mt7621-pci: simplify
 'mt7621_pcie_init_virtual_bridges' function
In-Reply-To: <20200308091928.17177-1-sergio.paracuellos@gmail.com>
References: <20200308091928.17177-1-sergio.paracuellos@gmail.com>
Message-ID: <878sj2vh2k.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: multipart/mixed; boundary="===============7289510890634176728=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============7289510890634176728==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 08 2020, Sergio Paracuellos wrote:

> Function 'mt7621_pcie_init_virtual_bridges' is a bit mess and can be
> refactorized properly in a cleaner way. Introduce new 'pcie_rmw' inline
> function helper to do clear and set the correct bits this function needs
> to work.
>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes are only compile tested.
>  drivers/staging/mt7621-pci/pci-mt7621.c | 85 ++++++++++---------------
>  1 file changed, 33 insertions(+), 52 deletions(-)
>
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt=
7621-pci/pci-mt7621.c
> index 3633c924848e..1f860c5ef588 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -57,13 +57,13 @@
>  #define RALINK_PCI_IOBASE		0x002C
>=20=20
>  /* PCICFG virtual bridges */
> -#define MT7621_BR0_MASK			GENMASK(19, 16)
> -#define MT7621_BR1_MASK			GENMASK(23, 20)
> -#define MT7621_BR2_MASK			GENMASK(27, 24)
> -#define MT7621_BR_ALL_MASK		GENMASK(27, 16)
> -#define MT7621_BR0_SHIFT		16
> -#define MT7621_BR1_SHIFT		20
> -#define MT7621_BR2_SHIFT		24
> +#define PCIE_P2P_MAX			3

This is one of my bug-bears.  The number "3" here is not a MAXimum.
It is a count or a number.  It is how many masks there are.
The masks are numbered 0, 1, 2 so the maximum is 2.
I would rename this  PCI_P2P_CNT.


> +#define PCIE_P2P_BR_DEVNUM_SHIFT(p)	(16 + (p) * 4)
> +#define PCIE_P2P_BR_DEVNUM0_SHIFT	PCIE_P2P_BR_DEVNUM_SHIFT(0)
> +#define PCIE_P2P_BR_DEVNUM1_SHIFT	PCIE_P2P_BR_DEVNUM_SHIFT(1)
> +#define PCIE_P2P_BR_DEVNUM2_SHIFT	PCIE_P2P_BR_DEVNUM_SHIFT(2)
> +#define PCIE_P2P_BR_DEVNUM_MASK		0xf
> +#define PCIE_P2P_BR_DEVNUM_MASK_FULL	(0xfff << PCIE_P2P_BR_DEVNUM0_SHIFT)
>=20=20
>  /* PCIe RC control registers */
>  #define MT7621_PCIE_OFFSET		0x2000
> @@ -154,6 +154,15 @@ static inline void pcie_write(struct mt7621_pcie *pc=
ie, u32 val, u32 reg)
>  	writel(val, pcie->base + reg);
>  }
>=20=20
> +static inline void pcie_rmw(struct mt7621_pcie *pcie, u32 reg, u32 clr, =
u32 set)
> +{
> +	u32 val =3D readl(pcie->base + reg);
> +
> +	val &=3D ~clr;
> +	val |=3D set;
> +	writel(val, pcie->base + reg);
> +}
> +
>  static inline u32 pcie_port_read(struct mt7621_pcie_port *port, u32 reg)
>  {
>  	return readl(port->base + reg);
> @@ -554,7 +563,9 @@ static void mt7621_pcie_enable_ports(struct mt7621_pc=
ie *pcie)
>  static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
>  {
>  	u32 pcie_link_status =3D 0;
> -	u32 val =3D 0;
> +	u32 n;
> +	int i;
> +	u32 p2p_br_devnum[PCIE_P2P_MAX];
>  	struct mt7621_pcie_port *port;
>=20=20
>  	list_for_each_entry(port, &pcie->ports, list) {
> @@ -567,50 +578,20 @@ static int mt7621_pcie_init_virtual_bridges(struct =
mt7621_pcie *pcie)
>  	if (pcie_link_status =3D=3D 0)
>  		return -1;
>=20=20
> -	/*
> -	 * pcie(2/1/0) link status	pcie2_num	pcie1_num	pcie0_num
> -	 * 3'b000			x		x		x
> -	 * 3'b001			x		x		0
> -	 * 3'b010			x		0		x
> -	 * 3'b011			x		1		0
> -	 * 3'b100			0		x		x
> -	 * 3'b101			1		x		0
> -	 * 3'b110			1		0		x
> -	 * 3'b111			2		1		0
> -	 */
> -	switch (pcie_link_status) {
> -	case 2:
> -		val =3D pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> -		val &=3D ~(MT7621_BR0_MASK | MT7621_BR1_MASK);
> -		val |=3D 0x1 << MT7621_BR0_SHIFT;
> -		val |=3D 0x0 << MT7621_BR1_SHIFT;
> -		pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> -		break;
> -	case 4:
> -		val =3D pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> -		val &=3D ~MT7621_BR_ALL_MASK;
> -		val |=3D 0x1 << MT7621_BR0_SHIFT;
> -		val |=3D 0x2 << MT7621_BR1_SHIFT;
> -		val |=3D 0x0 << MT7621_BR2_SHIFT;
> -		pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> -		break;
> -	case 5:
> -		val =3D pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> -		val &=3D ~MT7621_BR_ALL_MASK;
> -		val |=3D 0x0 << MT7621_BR0_SHIFT;
> -		val |=3D 0x2 << MT7621_BR1_SHIFT;
> -		val |=3D 0x1 << MT7621_BR2_SHIFT;
> -		pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> -		break;
> -	case 6:
> -		val =3D pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> -		val &=3D ~MT7621_BR_ALL_MASK;
> -		val |=3D 0x2 << MT7621_BR0_SHIFT;
> -		val |=3D 0x0 << MT7621_BR1_SHIFT;
> -		val |=3D 0x1 << MT7621_BR2_SHIFT;
> -		pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> -		break;
> -	}
> +	n =3D 0;
> +	for (i =3D 0; i < PCIE_P2P_MAX; i++)

Here, for example, 'i' never reaches the MAX value.  Surely that is wrong.

> +		if (pcie_link_status & BIT(i))
> +			p2p_br_devnum[i] =3D n++;
> +
> +	for (i =3D 0; i < PCIE_P2P_MAX; i++)
> +		if ((pcie_link_status & BIT(i)) =3D=3D 0)
> +			p2p_br_devnum[i] =3D n++;

This second for loop seems like a change in functionality to what we had
before.  Is that correct?  I seems to make sense but as you didn't flag
the change in the commit message I thought I would ask.

Also I feel it would help to have a comment explaining what was going
on.  There was a big comment here before.  It wasn't particularly
helpful, but it was a little better than nothing.
Maybe:

 /* Assign device numbers from zero to the enabled ports, then assigning
  * remaining device numbers to any disabled ports
  */

Thanks,
NeilBrown


> +
> +	pcie_rmw(pcie, RALINK_PCI_CONFIG_ADDR,
> +		 PCIE_P2P_BR_DEVNUM_MASK_FULL,
> +		 (p2p_br_devnum[0] << PCIE_P2P_BR_DEVNUM0_SHIFT) |
> +		 (p2p_br_devnum[1] << PCIE_P2P_BR_DEVNUM1_SHIFT) |
> +		 (p2p_br_devnum[2] << PCIE_P2P_BR_DEVNUM2_SHIFT));
>=20=20
>  	return 0;
>  }
> --=20
> 2.19.1

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEG8Yp69OQ2HB7X0l6Oeye3VZigbkFAl6RONMACgkQOeye3VZi
gbm3oQ//UyMX3EVbLNnRWBm1VZljgBZwJkPrjc+VPxQx59nqHo3GN4P0JeaJyQD+
fvT8OeCyMGJjXCWtatEJO0cxFusFCapbwm5iHfRPYD/Kp9MJRQ8lH8vL+giQv8Kf
kzOCFuIO+HpcwC48yRSzTsNECivUE2Qi5HQwbhGryFgVcni4MQWZHL2N0VtFsG5W
+aYRZcYS7BEUO/8R2ViKs1hvfO/OQKjMwDL7m65KtP8CbbVdzCegCqqb1xi1cbvY
h+RE2FD8NUdJ5Z03aTMj+wKdkyW9JB4Q71mL5a6q3Soi1KD9X7OVvc1blPEa1aqa
6tqMX4OmQXt+0ozGqJoeWdq12EPUOcp0MRvglCDnEuJRF0pDn/mDBUsF0oGXXkjU
YcpRqcdYQHBe3r+YNDmfvNhhs6Dfn1xsARehC7/fT2atsFBKwB6Q83xptv5WpZ0z
eZum2VKP0eguYta2sMf9yuSic+oJdL6X8ZJDCrD27/DBH5u6oWfMuTXLBY6GDBmU
4Ik8z7S6ePqAqdcGeeDJnOBANIsvKAz4AcrdLi+6T80cSZ+VEA+TQL8CuUI7Fdwu
EUjDb4nYQttiJgv0ccksFmYLTdeT5VIiRRnZbM7WTV88MBQ4PgNOBIcS4FWo/w9E
wPfwHP59DdgV9NAua/0wZk6co5eQG4O9GJi6ONbILHEny9JW1fQ=
=qX5Q
-----END PGP SIGNATURE-----
--=-=-=--

--===============7289510890634176728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7289510890634176728==--
