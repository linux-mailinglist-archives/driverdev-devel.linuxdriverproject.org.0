Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 461961B8751
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 17:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 686B685CF0;
	Sat, 25 Apr 2020 15:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JcaGn-kMdYl2; Sat, 25 Apr 2020 15:18:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40EA3856F4;
	Sat, 25 Apr 2020 15:18:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 561041BF947
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 15:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 51375855E1
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 15:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iaRP+V1rK9jV for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 15:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 476A5853B9
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 15:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587827916;
 bh=1SIn20szDlQ1F4nqk/0hZ4TyVykqVcZwhLZeWLcVgGw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=czG04/DBSPtmlI8zLUxfI4a+WBUhg0Tsg1wCv6E4cUxnv6zUZ9yY7oRQJekxwm++D
 A4jLYBCDkqo00b6zSLRFlbKYhPPd9Whb2kcFLWpSwBYI5B9JEoaJKfubQMGqgXKsdI
 x2SErddN8O9AHd8Tj8Do4x8FTSk0YX851tCyWlbQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MCKBm-1jK9NZ2xPu-009Lus; Sat, 25 Apr 2020 17:18:35 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/3] staging: vt6656: Use return instead of goto
Date: Sat, 25 Apr 2020 17:17:46 +0200
Message-Id: <20200425151747.8199-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200425151747.8199-1-oscar.carter@gmx.com>
References: <20200425151747.8199-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:dSKDSH2PmwoWhFUHy30J0iudMbXoJEVM2KWUysCDF/0/DcK8GvV
 ejRAaFZV4wyIsY59XWoZfdSHGrrcoP6g0qcHZVu0bKGuJH7h2n+aJ2kp3N9OVGzeMBYOwSv
 2ZVUE+0LeviPZjGR1JFdlM+V9kwKBboUTxKndFo0v7xgODPldx6XXRQbOxJF4UvTVe8m1Tt
 pXc8swqR+p+X0+ecAYv8Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:KdEsPLDpies=:M4fIKrEDHH4Bezwu3CRTCo
 s//uikx5zn+9x6YOOhRYyUNqoBeTUoicenevYFmXm+MDMj3ZS8c49aoL+R2b06fMCXJtrjZ/O
 etOAhFqsrYtDAta/SDUZTwnhK33Zen2yzbZFBqiWUsAH6W74bKpGBFGwx/5mFMPH0pojCKqAj
 u4+Zu/Vg9TKDD8jC5QcCYiFkdPDWs/IgVyJxk8bQZjl2XL8y5nF6Wpu1kD0/j95neBSJnYHOI
 cIc17a1uYVoaQ1VRbDoz+NBwrrr6RjG3Nz7IXLgDSyIaGs5jEfGgR3UfCumfUIBVuObbwviN+
 LEfYn6aInN1HaUJF7s2lrDlvy+Q/wHQ1z6/o74RdMWP29MA94K4EiTN1UEY6bRUIwu2fgZCsb
 UT2hxtbr3/yQkyq+P1HB7Xn00C0lKgjm07xvyWE6BQeaxfk2kvkceakKmNIMzCHzyQlaiuvRO
 lwLxDsKgB2LlgfIsEdUL/RtX67y63t6s2l4DSEjQyentcEf+Tvlc8df7E78mTesJBuGRHBsLJ
 5y3CPRR9Aa77WBHllPsZuFhSz+Trnmv2UzQMh/9j4iIgoX8iDhz+VNJ/RX0UFVo/XaZUJeKA8
 +Z56ca7RXIX6EbL8IWe2v25s/EXxLXNU4C9/NqPtKPA00KB2A90aQ1Wf/jdFz7Q4mLH/OKGQw
 Tp15MTdjbxkPWVFS+GZ1xRd79Ozp6m5LUi7OtutlHql1kDXn+XlRtxaJgf8KzfjdvakpawHAZ
 jtCZYLt9KSbEObCiQutougkkg7MVQR615Q8YrNTY0UFXeftrNVuiVEPU4mmVPGt6L4CYJEQAc
 ZGj7N0H/z9HcYA0cHm8iz0bBlcPUQTjg4gM8T+E2Ny9MinU/ljinrVqVl1266Q8q9xfvMKpjO
 tlja0ubqM7+3UgQzXWnjLT79AFUaMvs3sNg/+TpaVjDw8FozvEQoZjb+m4UDoxZwW45HRHOjG
 9fzvV+LuXWxHZ3SYP+APqA820e/s/B0I7aAlMjYJgBIwbx5S0aXvll6yOAnE1vphOb5quOUBq
 HzzigoUm2Pyv2WhSCV9UTgOLqlxTteAeCofdQLsGR0f/8+Lcn8koaZ8XrwfQBTFGIxSHB4/Lb
 64ueVTmHZprQmDu0q+UgwSQrAN2ncoDmIM+yjs8pBeOMk2yusfDfmCvQFXZ9OW5wTR+Psnmv6
 wCRXFGzHyVOfdDYa2i/3jBzDSk7W9hdhygMWm2A+xQRxy6tpy/F8BAw0yE4uVkdDj9wYUMqRj
 LQqzO7Jz2vG/9fcRO
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the "goto" statements with a direct "return ret" as the jump
label only returns the ret variable.

Also, remove the unnecessary variable initialization because the ret
variable is set a few lines later.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/rf.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 82d3b6081b5b..888b6fcb6e91 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -766,7 +766,7 @@ void vnt_rf_rssi_to_dbm(struct vnt_private *priv, u8 rssi, long *dbm)

 int vnt_rf_table_download(struct vnt_private *priv)
 {
-	int ret = 0;
+	int ret;
 	u16 length1 = 0, length2 = 0, length3 = 0;
 	u8 *addr1 = NULL, *addr2 = NULL, *addr3 = NULL;
 	u16 length, value;
@@ -819,7 +819,7 @@ int vnt_rf_table_download(struct vnt_private *priv)
 	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
 			      MESSAGE_REQUEST_RF_INIT, length1, addr1);
 	if (ret)
-		goto end;
+		return ret;

 	/* Channel Table 0 */
 	value = 0;
@@ -832,7 +832,7 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
 				      MESSAGE_REQUEST_RF_CH0, length, addr2);
 		if (ret)
-			goto end;
+			return ret;

 		length2 -= length;
 		value += length;
@@ -850,7 +850,7 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
 				      MESSAGE_REQUEST_RF_CH1, length, addr3);
 		if (ret)
-			goto end;
+			return ret;

 		length3 -= length;
 		value += length;
@@ -867,7 +867,7 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
 				      MESSAGE_REQUEST_RF_INIT2, length1, addr1);
 		if (ret)
-			goto end;
+			return ret;

 		/* Channel Table 0 */
 		value = 0;
@@ -881,7 +881,7 @@ int vnt_rf_table_download(struct vnt_private *priv)
 					      MESSAGE_REQUEST_RF_CH2, length,
 					      addr2);
 			if (ret)
-				goto end;
+				return ret;

 			length2 -= length;
 			value += length;
@@ -889,6 +889,5 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		}
 	}

-end:
-	return ret;
+	return 0;
 }
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
