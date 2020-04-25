Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8906D1B874F
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 17:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2EC1F204D8;
	Sat, 25 Apr 2020 15:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQ+nGbzZq6yY; Sat, 25 Apr 2020 15:18:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 67621204BE;
	Sat, 25 Apr 2020 15:18:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 539931BF5AE
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 15:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4E4BC87D57
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 15:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id APD96pOSZ7kx for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 15:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6D9287B94
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 15:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587827912;
 bh=cA51MhRZpcPdbhzkfNM7piuf/X+QYuleTh22MsKRiKw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=X3I87GoSnPyL8s2ODGDy2KCvF2hm5TvdAVuWW57qtfuAkYWr3Fa5XxA1Pg8/EYV6w
 VnhIT4p0UqL0DZPBTJO9a5a0kdY3MkYV87MGmgoKKP5ByMZYOt89nBa3LPMeYN/MWP
 QQB1piA/siKx46T30a9+GvXuw3DSply5kBJQzXvw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1M3UV8-1jSunt3qx0-000aUU; Sat, 25 Apr 2020 17:18:32 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/3] staging: vt6656: Remove the local variable "array"
Date: Sat, 25 Apr 2020 17:17:45 +0200
Message-Id: <20200425151747.8199-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200425151747.8199-1-oscar.carter@gmx.com>
References: <20200425151747.8199-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:gtIJ+SEoH+JonF2jdvTPXSN3dsz/lsGn1B6tAzfDsVuUMy5GXqf
 +EFo2IDXEKIX3XWUU4gbokazSnCF8GiOV7ZOUIPpAiajjlkmT1z2TcogyDgLER5RRBlEJqU
 CN+yjZEqpH/QdgMRQTjFZjiAeNnVBIBcE3tmQXvXPloytKXxgDW/nnfFB2JRqROxZS8LwaV
 o4k5AQeaZzntR7thLRlSQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:9mGWbtIyyQM=:6/HgujUBCrXsNwAZdHzf2r
 BzWK+7anO1LYpyw5gScTLiimGdwV6O+7ViUWsWz7r6/Q5GdbSDknO2Ax4vbSWgxJPg+DbdTwG
 JQ8p7GPry+jeSLmQNL3CtvFE/1jtdPoSVnFrbbFs0Tjw9cC1irUwuhYvPpsI0Mb0mpYsVLnV8
 V/KuJK5Yzn3696Nuv5cCY5nsMRJ9Y6YsrQNc77/kGH+i314vsB6LOic/SnmIMKfraIDy14KZ/
 RFV5iOsgU0FTRGki6We9M565/a9N8Se2/LE3ux0ib7W7PlbFLYIOySgAAKNgc8MOEtVHur8Wt
 e4ejuEi6F+MmXbHp4YMhs4w202G1TSFrAk1izgRAukYe5EvQfrc0i0DwyrupXpsrffKhS9qjI
 0MIy0gEuECnOmCQnb7y7aURgmdjTu0oDsPXchNY06/+YdOR3e6BCtrJL4LM9QzTi7jLD+bJmc
 LFRWXvvFy79qPWc+AVqwnGnZ4obdDhWcCj7O2m1ZprHEsHF0HPl3OQzHJIlO3EqcxmQsc58Lw
 7W/funJ/eba8OeE7/VmeQkL1zACvcHKaYOpDFYlAERXNIWbkKckWSSqu51eBKpdyZXp96nFs7
 2N4QYXJRPYoDQ1HaQbXhGt+RCe5d20iOlLMUBi1zh/ARYbLgXXFP+ACsYs3LjXhRBAzNFrOTu
 8T7h/Omtfa4h6tBd/Ub05R7zVqK698fAaA6JMeaoeybVYs67wXMtCJsZ3qPOAVb1WwMkcnVOe
 /V2PKMMuwedAcQuSfu+dhKFuf8eLvvU5btt+OMz8CZseoeme88jKGs+KMp40suuukGFiYYh3u
 y9mZQYQPFo4iAz7ImvtH4jlFj3hB3GYK2qR4NVYIoSATiugFtXXlBzV+jGcsM90ZsN8VuyhB+
 NxABjrbY3Tk9ArDRZ7zkkrf90t5XzpbSWVJ/pN2X0D44uF1dPPcK1sATgqejVP2cSICtR7Dlo
 jlUCmZMkiexuER6pCwvSra3k6HLiNpYgA9cp6t9nkf/LZz7BWrxCfwrqdkvCvsp39IT9G4wDr
 QqafgUx/99r+n0B6w/jex3jnOE1rjsiA2WOykilGJRqxUMeLyLrUCls2VrU+Rv5Vyq5Ej8jbe
 AfyFvlaIdwy/BDPq1AfKGyARzCOby8Q+V4odyRzA9yo4XdJlU5zF+oxQQgEHSjC6gcIRf+k+P
 4KSqwg+ArfNWSqU+HXfmqsEKfib5GOzw+J+ahWacORYCsc2O4XHHQnku4KhMGDkVaNN+aQmUh
 llOrrBH0YkIwL7TZV
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

Remove the local variable "array" and all the memcpy function calls
because this copy operation from different arrays to this variable is
unnecessary.

The vnt_control_out function already does a kmemdup copy of its const
char *buffer argument and this was made unnecessary by:

commit 12ecd24ef932
("staging: vt6656: use off stack for out buffer USB transfers.")
Author: Malcolm Priestley <tvboxspy@gmail.com>
Date:   Sat Apr 22 11:14:57 2017 +0100

    staging: vt6656: use off stack for out buffer USB transfers.

    Since 4.9 mandated USB buffers be heap allocated this causes the driver
    to fail.

    Since there is a wide range of buffer sizes use kmemdup to create
    allocated buffer.

So, the same result can be achieved using the arrays directly.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/rf.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 06fa8867cfa3..82d3b6081b5b 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -770,7 +770,6 @@ int vnt_rf_table_download(struct vnt_private *priv)
 	u16 length1 = 0, length2 = 0, length3 = 0;
 	u8 *addr1 = NULL, *addr2 = NULL, *addr3 = NULL;
 	u16 length, value;
-	u8 array[256];

 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -817,10 +816,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
 	}

 	/* Init Table */
-	memcpy(array, addr1, length1);
-
 	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-			      MESSAGE_REQUEST_RF_INIT, length1, array);
+			      MESSAGE_REQUEST_RF_INIT, length1, addr1);
 	if (ret)
 		goto end;

@@ -832,10 +829,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		else
 			length = length2;

-		memcpy(array, addr2, length);
-
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
-				      MESSAGE_REQUEST_RF_CH0, length, array);
+				      MESSAGE_REQUEST_RF_CH0, length, addr2);
 		if (ret)
 			goto end;

@@ -852,10 +847,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		else
 			length = length3;

-		memcpy(array, addr3, length);
-
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
-				      MESSAGE_REQUEST_RF_CH1, length, array);
+				      MESSAGE_REQUEST_RF_CH1, length, addr3);
 		if (ret)
 			goto end;

@@ -870,11 +863,9 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		addr1 = &al7230_init_table_amode[0][0];
 		addr2 = &al7230_channel_table2[0][0];

-		memcpy(array, addr1, length1);
-
 		/* Init Table 2 */
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-				      MESSAGE_REQUEST_RF_INIT2, length1, array);
+				      MESSAGE_REQUEST_RF_INIT2, length1, addr1);
 		if (ret)
 			goto end;

@@ -886,11 +877,9 @@ int vnt_rf_table_download(struct vnt_private *priv)
 			else
 				length = length2;

-			memcpy(array, addr2, length);
-
 			ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
 					      MESSAGE_REQUEST_RF_CH2, length,
-					      array);
+					      addr2);
 			if (ret)
 				goto end;

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
