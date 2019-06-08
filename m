Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F85739C3C
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 11:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 955C186430;
	Sat,  8 Jun 2019 09:49:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N8RHJdiQbwkK; Sat,  8 Jun 2019 09:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 362CD861E7;
	Sat,  8 Jun 2019 09:49:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 562F21BF32E
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 09:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F41386311
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 09:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1787OVNxp8ZC for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 09:49:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD5EE84138
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 09:49:23 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id a186so2546005pfa.5
 for <devel@driverdev.osuosl.org>; Sat, 08 Jun 2019 02:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ceB58BsT2jhuXKLvpsF6nc1EbvAVeMuXaSf+CtPNzlg=;
 b=ZOHbvL/SIifcsBkKsIMBtCrqGGFpB9o8aoUYAqXaYK5rea2+tx1pKid0Xi8Vynev58
 f4lILw2GUYXpeCcgNH6FgWHFCQaUtzuGBRUWW48lR3mLLdEZv9dsA1qa9AUccDBNi22I
 FgsktcRehMLN1neRxc76Eny2dhNClfBg9lqgOzMnQoQykFEJW79rJ6r5sHMy70/8OX7y
 2sLhGA1S2c1im9T5w19fWhB6zgCHOChLxh+z3iWJNKNclF2wDv5mkWF/sxsNjI6OO3je
 NO3scrCxGmlU6VWSp9bmE2IM6I/n0jD+PCx/zfE5FgHtmru881NJywKLdNRLfXXsSYdj
 onpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ceB58BsT2jhuXKLvpsF6nc1EbvAVeMuXaSf+CtPNzlg=;
 b=kCD617sGUAu0dcJnng4JSjmC99yuN8S7y2QrFfv+9McOiPGEUhxJarGCGxfTy22eXN
 klk3t9E5pqGffQc4MCeXS9db3O3N6EQ4Gv8Raj4GMQ/QZ0fAs+/Cfl9vAi4NQrZd1D3G
 S5FRgTOs/IxtgZGaTEQd+dNVQhJjPvBHcm9xIJ0wIvW9ulfQFJL8JbI2X4ESMc1+K3+N
 pvzzrpwGlB+1xKzvuqp2yH5tGqToZMmfOj0N0jMDVqBHlLK6/NrVOwZrC95xgCA63g2w
 bKQ5tNo1JFDIDz6j4QQ7TVr2y63U3FpXOPoiw53Lzso3o01BwqkQXrOEl52Sie4HPG7T
 hvEg==
X-Gm-Message-State: APjAAAVMcizMjQLf14p0ZR9f/KmCPnirUcQ3BS3VLKhVJegdJq2uOkQd
 cWOFkAErEtXLZNkk/ES5wPg=
X-Google-Smtp-Source: APXvYqynnyl6j4lWBQSS4y8CNh8+wxRD6csIB5VrA1DZZsD6AFefijgTYBS9fQJ9CefQtd5iIsDANQ==
X-Received: by 2002:a62:65c7:: with SMTP id z190mr63825619pfb.73.1559987363342; 
 Sat, 08 Jun 2019 02:49:23 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id z11sm4017605pjq.13.2019.06.08.02.49.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 02:49:22 -0700 (PDT)
Date: Sat, 8 Jun 2019 15:19:18 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-erofs@lists.ozlabs.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: erofs: make use of DBG_BUGON
Message-ID: <20190608094918.GA11605@hari-Inspiron-1545>
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

DBG_BUGON is introduced and it could only crash when EROFS_FS_DEBUG
(EROFS developping feature) is on.
replace BUG_ON with DBG_BUGON.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/erofs/unzip_vle.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/erofs/unzip_vle.h b/drivers/staging/erofs/unzip_vle.h
index 517e5ce..902e67d 100644
--- a/drivers/staging/erofs/unzip_vle.h
+++ b/drivers/staging/erofs/unzip_vle.h
@@ -147,7 +147,7 @@ static inline unsigned z_erofs_onlinepage_index(struct page *page)
 {
 	union z_erofs_onlinepage_converter u;
 
-	BUG_ON(!PagePrivate(page));
+	DBG_BUGON(!PagePrivate(page));
 	u.v = &page_private(page);
 
 	return atomic_read(u.o) >> Z_EROFS_ONLINEPAGE_INDEX_SHIFT;
@@ -179,7 +179,7 @@ static inline void z_erofs_onlinepage_fixup(struct page *page,
 		if (!index)
 			return;
 
-		BUG_ON(id != index);
+		DBG_BUGON(id != index);
 	}
 
 	v = (index << Z_EROFS_ONLINEPAGE_INDEX_SHIFT) |
@@ -193,7 +193,7 @@ static inline void z_erofs_onlinepage_endio(struct page *page)
 	union z_erofs_onlinepage_converter u;
 	unsigned v;
 
-	BUG_ON(!PagePrivate(page));
+	DBG_BUGON(!PagePrivate(page));
 	u.v = &page_private(page);
 
 	v = atomic_dec_return(u.o);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
