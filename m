Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8441D21D59A
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 14:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45D9289701;
	Mon, 13 Jul 2020 12:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cg-bCeSnrm4D; Mon, 13 Jul 2020 12:15:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A413D895DD;
	Mon, 13 Jul 2020 12:15:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F9F01BF3F6
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C4FD895E3
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MqmaObvuOdR3 for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 12:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 057AE895EC
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 12:15:20 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id o13so5960569pgf.0
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 05:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CngMTDKicRpGsYdV84WEl9k2HNLxAMPDNQJc4li0NJg=;
 b=AKk8DOTp4rMxlJ8l4EPNhHU9SB8X1hd/H6jmMzRGlZuExBZ4jFqyrebmjVsUjbgI42
 fmy1YojOiOrzkQg2zhMnVYY9/sWERz9dqP4hZGPTmch0SyFbkQEKARm5Uabq3WDSaaUc
 bWb9ctloxEVOL83jY5b7GgpmtUanndBVO6qK0oFcZbaheYe/J+6UOWZKDsaNwrjVLjWv
 ncJj5KQaD5LknFiiCSgIWeiTfOe81ahB6XdxCf/+6XR5JvgWUHQQZDqhbhE0/Rev+mtd
 QoNXmhIqcV7uPND8T/M5bryq4CBi7R4lCVsofBVvrG3aRiAIhoTAbpH4phgaMIDPHMwT
 ZXWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CngMTDKicRpGsYdV84WEl9k2HNLxAMPDNQJc4li0NJg=;
 b=Zt5VMOZeVYzwRM+ml7oKYGshz98ywNxKYX68D15Jf1IJRhBAc2rvSB/MU11Kc6kK2m
 v6keI2CQ2ZhUUHJgO088clP1lBo9b3NhxjUAaRM/dvrW5w7Pn6Q8wFJT4rlo53LIUyQo
 YP96FUnkIXsrFBMFf2RS2zYDWpfNnV2C7cTpNYZfh2IW6QShTpBObQeo+b9nfTATMdIP
 GYlJW1nh5yW9WK7HfLzFdnQhAI7UWjLT38lcpPNnQ8w7v8VAQscgijy0c6YI/JdS/NTb
 gRFqB8kDhiDOHGbk+YK6RraQ34T4zWhtuR28pnZ5yEEuXOaJGDHGYxqCC1s4zkpA4LmP
 qouQ==
X-Gm-Message-State: AOAM530GpuZn8SopZ3UkqCf7xf5Y5IVZdZD82x/WVjcDSJXJXOrLC4A6
 neA6FxxrQZQ4vv6fTzOmAzs=
X-Google-Smtp-Source: ABdhPJzL4TVE2ZmLdK+X8Ime38AucFBJP/ru8QjY494q9pZhTWeJLxmhEama436Fg3gRphnMt2sahg==
X-Received: by 2002:a63:e80e:: with SMTP id s14mr63928961pgh.32.1594642519579; 
 Mon, 13 Jul 2020 05:15:19 -0700 (PDT)
Received: from blackclown ([103.88.82.220])
 by smtp.gmail.com with ESMTPSA id o8sm13164541pgb.23.2020.07.13.05.15.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jul 2020 05:15:18 -0700 (PDT)
Date: Mon, 13 Jul 2020 17:45:05 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org
Subject: [PATCH 1/6] staging: qlge: qlge.h: Function definition arguments
 should have names.
Message-ID: <2d788cffeec2dad9ce9562c15a69d8b63ed0b21f.1594642213.git.usuraj35@gmail.com>
References: <cover.1594642213.git.usuraj35@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1594642213.git.usuraj35@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1464656892957577193=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1464656892957577193==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline


--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Issue found with checkpatch.pl

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/qlge/qlge.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 05e4f47442a3..48bc494028ce 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2057,8 +2057,8 @@ enum {
 };
=20
 struct nic_operations {
-	int (*get_flash)(struct ql_adapter *);
-	int (*port_initialize)(struct ql_adapter *);
+	int (*get_flash)(struct ql_adapter *qdev);
+	int (*port_initialize)(struct ql_adapter *qdev);
 };
=20
 /*
@@ -2275,7 +2275,7 @@ int ql_mb_set_port_cfg(struct ql_adapter *qdev);
 int ql_wait_fifo_empty(struct ql_adapter *qdev);
 void ql_get_dump(struct ql_adapter *qdev, void *buff);
 netdev_tx_t ql_lb_send(struct sk_buff *skb, struct net_device *ndev);
-void ql_check_lb_frame(struct ql_adapter *, struct sk_buff *);
+void ql_check_lb_frame(struct ql_adapter *qdev, struct sk_buff *skb);
 int ql_own_firmware(struct ql_adapter *qdev);
 int ql_clean_lb_rx_ring(struct rx_ring *rx_ring, int budget);
=20
--=20
2.17.1


--HlL+5n6rz5pIUxbD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8MUEgACgkQ+gRsbIfe
746+8BAAp6RmWWIkmwMpIRcvlLjr/DDRlK7chsKnQhbgSW13TWUOkT7MAuc1zjOU
xH0kMQLP/FQ+OZlssWXZ4oINTPXyp2U/7hOtD01AlbuCooDKRo47ryVKclDX1jRm
ygDm7vYxrPI26ru7lbiiIGl5/1C8cQoKxNfb7XlhBQz+cTNWa00wmouVI3//Jko0
qLHPVpHxL9zpUGcfVg1Mt+9Q7ashXxl28YH1ljJ4CjSgSWstl/CGSHntzxyQt8Tl
A58Y/LUpY3q7D26BpYjsK7f0NrZh5PHh6+X14WO4zjYlRCqL0SmPbnVeaEYiwIRM
wBSXVfIe69GYHbEeZTgZs0Te3240wagcozdlTqw/PEx6ZVhMl8sG14QJawRUEsGX
DZ6rSVfcC6zjISq4Hkp8FYaiKch1JfbmOu6GOWhybZyZlFSpH3U205d1pNvrqAAD
xvstGq9X0pzPzaUrNZ8F/RmuXN7ps6SvZC1XqSK04onmbABVPcwenqbLXZ7oH6YB
v2nYPta5e0NzgLxM734BA2Dp0hFDhS3b2nL64N8S0slR0CRf/I9qIxt7FfYJF5C+
MSERluUhWkknI2uhqpUrX0HuL1DSJBa16LXLqceWa+EQuaJ1XltZ6xjRdqR46mz3
bWK0PbNe3eZnSxZo81asB3A6ZP4ifGvcs8IUOUgaMKdMVrInHEk=
=kHsR
-----END PGP SIGNATURE-----

--HlL+5n6rz5pIUxbD--

--===============1464656892957577193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1464656892957577193==--
