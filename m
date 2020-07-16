Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53086221F24
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 10:58:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 049FD88E89;
	Thu, 16 Jul 2020 08:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 59VGLHR3IrDG; Thu, 16 Jul 2020 08:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03C73872D8;
	Thu, 16 Jul 2020 08:58:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 855AD1BF312
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 08:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 81F9088E7A
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 08:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fUUcdgkPfbPa for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 08:58:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1B634872D8
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 08:58:28 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id cm21so4472112pjb.3
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 01:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rU2AvrUF1MSQNhOVtZSsFfE23nrV3JkloSDmiaF1rgQ=;
 b=K3HTu2ZmadRX8xzBvryPFb5wAdcUVb0mZ4VBzLUH2tP6diUz22RvUOt0KI03cqJtva
 ZKtTG4JRONNq9vH0+R6FxNCksupFsjlIpa25bMtCP4y3ZUrUwo8MVneh2tUtcYpMofRx
 CanUgsDK2xXw7GQQNnQQ1jZ8rcejE41OwnkDhu2iMGSzWq9CaLgW5RJEleHjDLGHNkKs
 NKiPdNCvxIUlWh6UdqPWeaiZ0Ur36VLTQl+Z6E9SIA+G43rD7GQN/Ftc1+kI4Ixfd139
 aBPbkXRGA/iBXQSsnpAJQ8lqLB/wHeqaC21gyFRZmzpyi4kltB4hQiko1yM4JqIjxG8p
 uraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rU2AvrUF1MSQNhOVtZSsFfE23nrV3JkloSDmiaF1rgQ=;
 b=U4c4m4e10FzZIEvNpsS3YBSyZoifj+SP5l21hSCgO7XBvB3xz6lzG1L8CstbQRQlCi
 HkZ3fPf20w3cUeCeyy06ZiVKAtmvaH43DLGSEPVOXKaadw5PhDhVp3iZERiBbUIqoPLj
 kgdSFz+CDdCyd9dHpXiv/O65bm89gWatrKZAMOMJfh2iEQ1T2vw604eeTb/Z1qYjB5Qz
 7p0i5SmwFx6XQdWvXsslaqYeqYkmukRJo6mnQfQyO+cI1nLzaNNOyfQG84l+WiJgN3y6
 12GDd9qvwrZ7D5bdKnSvWf0M35ZZGQlaxpxPLEphP3hLdif5znwt+ehzebisyZUl9kD7
 KVGQ==
X-Gm-Message-State: AOAM533vMqMww8R9J5KIMKi81zKlIcRu1KlEiR1NXFxf0NvJTL8enNqY
 nUW7toqfmD6RUkUCy2XsK80=
X-Google-Smtp-Source: ABdhPJw5wys6nZkU2EwXlUQZltuw00zMlClC9BBY3XvLGB5xWrjt9v+5HR5AWIyGOo0u67fCgTVgsA==
X-Received: by 2002:a17:90a:6448:: with SMTP id
 y8mr3846953pjm.142.1594889907702; 
 Thu, 16 Jul 2020 01:58:27 -0700 (PDT)
Received: from blackclown ([103.88.82.145])
 by smtp.gmail.com with ESMTPSA id t187sm4364244pgb.76.2020.07.16.01.58.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Jul 2020 01:58:26 -0700 (PDT)
Date: Thu, 16 Jul 2020 14:28:11 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com
Subject: [PATCH] staging: qlge/qlge_main.c: Replace depracated MSI API.
Message-ID: <20200716085811.GA29239@blackclown>
MIME-Version: 1.0
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4502576803810070921=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4502576803810070921==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace the depracated MSI API pci_enable_msi()
with pci_alloc_irq_vectors().

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_m=
ain.c
index f7e26defb844..44ef00f1f8ee 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3181,7 +3181,7 @@ static void ql_enable_msix(struct ql_adapter *qdev)
 msi:
 	qdev->intr_count =3D 1;
 	if (qlge_irq_type =3D=3D MSI_IRQ) {
-		if (!pci_enable_msi(qdev->pdev)) {
+		if (pci_alloc_irq_vectors(qdev->pdev, 1, 1, PCI_IRQ_MSI) >=3D 0) {
 			set_bit(QL_MSI_ENABLED, &qdev->flags);
 			netif_info(qdev, ifup, qdev->ndev,
 				   "Running with MSI interrupts.\n");
--=20
2.17.1


--k+w/mQv8wyuph6w0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8QFqMACgkQ+gRsbIfe
747zow//ZLAF3gs132hkWk5iOyoAp9G/oCE0GXRsND9P4To3CoYUuX5be27oZdzR
+JGvWRf2sraAene3fa+VweceoGu4kEX5mRVzRSRfAP9r/ah6Vug1bAAZ6zPFeeTx
XFjiRqGFIDev2h5WNnGEnQQZWCtzCJbHu3+cImEkgMnfQjGOy+iPU/xJieBBQkY7
/zMTb3+C//3VG7y1KhsW8+Wet+zv8xuPRtn+bUrNoja8Ak9pY32IThgyRu3UiNE7
eiVvXnCz+VRF2lHP0J5lGBssZHjqni6IZ500rYxWLkATtEbN3nC73CuAx1XgIIMV
+cm/a+3y4aY8XBbPnXsG0OkxIXI5B/vsEJtGUyR5to7DVv2oPsLTPp24QVHFftqM
vQk0wS7cZmOCTYtOJcaGMVWo8wvY2TNk4U5L7KGu5BEXHRxFkkFtD6uARS5CcciR
lyOkNQH2dcwm+9/JD5fvGJAHL3XMnI9C3v9ludnW+GiyOrM7wZPH+6rayh+pgb/K
PF2Ts5a/cdyjX3bfOk/xlTZZdbPT7kr4ML6AKu3+smZVoU4Jq2wLUrykuZqxcB/N
fBIl0bSPNsqAGxKDAIN9/GYX85nlNrHoRBEgX5HYS+6lSxHBIqOmEv1YvrxmvOa5
pcrR9R17bWpX9uW6Ndjggi4VXkfSRPfaexAUxP48zdNhA8LiaMg=
=0UMt
-----END PGP SIGNATURE-----

--k+w/mQv8wyuph6w0--

--===============4502576803810070921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4502576803810070921==--
