Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2BF193050
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 19:26:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A49802582B;
	Wed, 25 Mar 2020 18:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZDgVWrno2qt; Wed, 25 Mar 2020 18:26:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2EB042535C;
	Wed, 25 Mar 2020 18:26:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB8161BF2C6
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 18:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D7CD787E61
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 18:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KNP6QlQHFpV1 for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 18:26:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 057B487E15
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 18:26:26 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id 7so1560741pgr.2
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 11:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rdOwQ11n3cpKxP1BnmbKbCp9D6XytaUHGx7F/xFAJIw=;
 b=YLQ5jdqMUqkf5nUdhOeIqGBUKQMvKSU5dOE/f/on/yy1ZjkRYbO+QC0yH3loc1RBrI
 8vq2BARKAuVLS4B4rkewceFxkPUnbVuNcwx2TvXQGBJ/uyM5cua7oqCYDdFD4x3Qcf0P
 MVGIUCA8QeCEVWeuBNNruftZGmJfbxGwCw+w6rJpBshpXXluQcFANXQ3c0FkhgzZYold
 xF/N7snIgVzB7mPP3fxPlFSbTWs4Ln5Y9VO1dBgN8ri9Gy0O8IL1IC2rNKJS/Tcc0JBW
 Dr8qmOckxGoJMz/fdhJbasckqIEXNxe2IeItDFu9BvwmDJi8TL9a7Dqris43Fi0Ru1AX
 TkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rdOwQ11n3cpKxP1BnmbKbCp9D6XytaUHGx7F/xFAJIw=;
 b=NS0xQL9AMVmQByQNn/WUTCJqxjUGaynNU8v9X5z0N1FnB3YwgRElyQNP1FWAZFJjTR
 YBqagc1oU7jS3/5zzEqSnRSM83XGiA0NHEHI1YLOlvhRJp1ZDhudX2ODT2xvOr6iuGnX
 D+N5Yrfze7B9P/18rV8uR4sOL2dgeGDrqnxJbPy1U+WAEsuA6RKyCNEvzsnwHnbPiODJ
 WH7tyPCloSu/0j8uPXw9nuxMM6S6a6ukTzMSHd87k7ohO9hMuh7J9VdBzVSkwkEKKa2H
 LP2uGsDyd64xtizARzpr1zXTW/Jsgl0eI8nbLDwfdHMPBG6GGbIW48viVFUT7nUJSfnk
 JySw==
X-Gm-Message-State: ANhLgQ3cThVW8azmBnSsCOZupe2Esv4aPPmlEVTEGst5pgdNOpt9AuKQ
 WMymJvDk8LxvXRXWA3zBQ6fnIRu/RQ4=
X-Google-Smtp-Source: ADFU+vsM45qbZaWKmVwyap6q+4eaKiz8s3B6hIo9eHBtONe002wIdWM4MSOoHZzu9/ZTnRrNQxFHIA==
X-Received: by 2002:a63:df15:: with SMTP id u21mr4022987pgg.95.1585160785420; 
 Wed, 25 Mar 2020 11:26:25 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 k6sm4160953pfa.214.2020.03.25.11.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 11:26:24 -0700 (PDT)
Date: Wed, 25 Mar 2020 23:56:17 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove blank line before '}' brace
Message-ID: <20200325182617.GA9411@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unneeded blank line before a close brace '}'.
Issue found by checkpatch.pl:
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 9c4607114cea..5ebf691bd743 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -434,7 +434,6 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 			rtw_secmicappend(&micdata, &header[16], 6);
 		else
 			rtw_secmicappend(&micdata, &header[10], 6);
-
 	}
 	rtw_secmicappend(&micdata, &priority[0], 4);
 
@@ -723,7 +722,6 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 			TKIP_SW_ENC_CNT_INC(psecuritypriv, pattrib->ra);
 		}
-
 	}
 	return res;
 }
@@ -829,11 +827,9 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo == NULL!!!\n", __func__));
 			res = _FAIL;
 		}
-
 	}
 exit:
 	return res;
-
 }
 
 
@@ -1219,7 +1215,6 @@ static void construct_mic_header2(
 		if (!qc_exists && a4_exists) {
 			for (i = 0; i < 6; i++)
 				mic_header2[8+i] = mpdu[24+i];   /* A4 */
-
 		}
 
 		if (qc_exists && !a4_exists) {
@@ -1234,7 +1229,6 @@ static void construct_mic_header2(
 			mic_header2[14] = mpdu[30] & 0x0f;
 			mic_header2[15] = mpdu[31] & 0x00;
 		}
-
 }
 
 /************************************************/
@@ -1413,7 +1407,6 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 		}
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		aes128k128d(key, chain_buffer, aes_out);
-
 	}
 
 	for (j = 0 ; j < 8; j++)
@@ -1719,7 +1712,6 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 		}
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		aes128k128d(key, chain_buffer, aes_out);
-
 	}
 
 	for (j = 0; j < 8; j++)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
