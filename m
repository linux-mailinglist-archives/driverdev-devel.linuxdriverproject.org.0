Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 008093D563
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 20:22:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5FCC85F58;
	Tue, 11 Jun 2019 18:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mOEHRjnaXQ_9; Tue, 11 Jun 2019 18:22:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9B4B85F5C;
	Tue, 11 Jun 2019 18:22:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 247681BF425
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 18:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 218FF86DAE
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 18:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M4uReRBlaRL1 for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 18:22:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6988F86DCC
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 18:22:12 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 81so7932324pfy.13
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 11:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=w+GPyWgwq3wF+11wmpSdhR0x5M0TH4NOB3dASP/5Dsg=;
 b=ikB+TbszFd5cHriyURqfCSWha/XGtBim8PTf54Xf8gjs96SRXBJMuvScmE9MFo0TU3
 CF1B8EXexxNak9xh7uZCFX0KTgZZzfLqhIG5OG8X54q5b3xS4m7u8cv3ot1u/JG3vroW
 ytxSgcFcQOJ6p96vJvdTioonTYXFBoZ4kld0wI302Yj1kBL8xKosbID8ItSl0p1NRAcD
 9l92MEmQ/E86J18Z8QE7IuwPlULVnonH+UvnCNRIamHzSX2bagxfuyvgEIid7LumCGG7
 qKm9luewGU0cBfibDOoOuByxSO/GQvOqBX4U+R37QehV5DW93Y1mYv+zTWnfrPbmd/BL
 cURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=w+GPyWgwq3wF+11wmpSdhR0x5M0TH4NOB3dASP/5Dsg=;
 b=oDL7i4D58z1X0O/9a5qI2O/bSurpsBlRCIl8rEOxyah/cmOytTO3zihFW0Zj3SJoGU
 207zrikb5EBILXuas2UV+w2H5s1nfeR66CFSAf3/bBnayCUNo3wviEY1y/2E1e9iHQD7
 QC0QJKzoeWljcRR000pAOUskEc7MBdfgNBBghTJLdaKCgvgic2X1QJG1lPuzMyjywASf
 gVHpqpUSpp6qC92ZEO5JsaCksFwsERYwPZ3g2esB6DaJbINRlpVTcHyl+/0lJ2Zz2mRI
 Meus2JP/1YV8wE9dVVMCDj7KHiX0m7L39OgUnfMYLJvO7UUdQ3PoYJIix3k28wXcAzoe
 R12w==
X-Gm-Message-State: APjAAAW2CiTMOSHmEac3xBzF+BSWMAbIIWqqOA8m8k0s5LD02qBVje2b
 nvX+x6O4c4mnhoAAAHjn/L8=
X-Google-Smtp-Source: APXvYqzImy7uI7u3pw2kZ89UjO65/t3il5lfJt2Xgh+DiOPSquUiPqxr0vcouaXn33dXG6RKTgW4dA==
X-Received: by 2002:a63:6948:: with SMTP id e69mr10629493pgc.441.1560277332016; 
 Tue, 11 Jun 2019 11:22:12 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id e16sm2984256pga.11.2019.06.11.11.22.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 11:22:11 -0700 (PDT)
Date: Tue, 11 Jun 2019 23:52:06 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>, Arnd Bergmann <arnd@arndb.de>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] staging: rtl8723bs: hal: sdio_ops: fix spaces preferred
 around unary operator
Message-ID: <20190611182206.GA7187@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

CHECK: spaces preferred around that '+' (ctx:VxV)
CHECK: spaces preferred around that '+' (ctx:VxV)
CHECK: spaces preferred around that '+' (ctx:VxV)
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index baeffbb..ebd2ab8 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -214,7 +214,7 @@ static u32 sdio_read32(struct intf_hdl *intfhdl, u32 addr)
 
 		ftaddr &= ~(u16)0x3;
 		sd_read(intfhdl, ftaddr, 8, tmpbuf);
-		memcpy(&le_tmp, tmpbuf+shift, 4);
+		memcpy(&le_tmp, tmpbuf + shift, 4);
 		val = le32_to_cpu(le_tmp);
 
 		kfree(tmpbuf);
@@ -261,7 +261,7 @@ static s32 sdio_readN(struct intf_hdl *intfhdl, u32 addr, u32 cnt, u8 *buf)
 
 		err = sd_read(intfhdl, ftaddr, n, tmpbuf);
 		if (!err)
-			memcpy(buf, tmpbuf+shift, cnt);
+			memcpy(buf, tmpbuf + shift, cnt);
 		kfree(tmpbuf);
 	}
 	return err;
@@ -366,7 +366,7 @@ static s32 sdio_writeN(struct intf_hdl *intfhdl, u32 addr, u32 cnt, u8 *buf)
 			kfree(tmpbuf);
 			return err;
 		}
-		memcpy(tmpbuf+shift, buf, cnt);
+		memcpy(tmpbuf + shift, buf, cnt);
 		err = sd_write(intfhdl, ftaddr, n, tmpbuf);
 		kfree(tmpbuf);
 	}
@@ -727,8 +727,8 @@ static s32 ReadInterrupt8723BSdio(struct adapter *adapter, u32 *phisr)
 	hisr = 0;
 	while (hisr_len != 0) {
 		hisr_len--;
-		val8 = SdioLocalCmd52Read1Byte(adapter, SDIO_REG_HISR+hisr_len);
-		hisr |= (val8 << (8*hisr_len));
+		val8 = SdioLocalCmd52Read1Byte(adapter, SDIO_REG_HISR + hisr_len);
+		hisr |= (val8 << (8 * hisr_len));
 	}
 
 	*phisr = hisr;
@@ -952,7 +952,7 @@ static struct recv_buf *sd_recv_rxfifo(struct adapter *adapter, u32 size)
 			recvbuf->pskb->dev = adapter->pnetdev;
 
 			tmpaddr = (SIZE_PTR)recvbuf->pskb->data;
-			alignment = tmpaddr & (RECVBUFF_ALIGN_SZ-1);
+			alignment = tmpaddr & (RECVBUFF_ALIGN_SZ - 1);
 			skb_reserve(recvbuf->pskb, (RECVBUFF_ALIGN_SZ - alignment));
 		}
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
