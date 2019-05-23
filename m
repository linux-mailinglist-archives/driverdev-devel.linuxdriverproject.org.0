Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3B327D36
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:51:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6689287CDC;
	Thu, 23 May 2019 12:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5f-xw4R0j5d; Thu, 23 May 2019 12:51:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23DC087CA2;
	Thu, 23 May 2019 12:51:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 752B21BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70ACF313B0
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n2F+cH+x3ICE for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id F2ED13138D
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:50 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id w1so5384042ljw.0
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sr3q+U1eMl/yAW7j8+VmGxN32duQd8dX2jbMshZTZ4s=;
 b=s9ui9vJnc8eOVXnf7ED0z4qUqkyiwh94tqkJK1PSzsZZcnrjJY9KfwJKMMW9V1zgYF
 lsaZnmEodpfsTw02J1dgawNxrHvNu9vSlLbEFcx5B87fepseyC3TaYtWJEVFwe26AiyQ
 9hdYiMKL68UYW7ox8To0Y50q3cvVEr/BDxT9ZfFSCVx+CBfAcSBcRfWi9xHcZj0TMYjU
 SRT6n7LsY0AX+QGw+6vHqktX9fN8M86CZvwi5eblEw+zEVosvwSnVP0tJf7EJOd3Ode1
 WVywZcYiedyQwVjbDhvOUmU61RI/bXZxzBKQUtMkL74YaiwMr7FzK/TgQnac9uAgN44X
 cfoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sr3q+U1eMl/yAW7j8+VmGxN32duQd8dX2jbMshZTZ4s=;
 b=jW+N4wvpgLWY6H85l1Zm8Vho6EB9XJgtLIRnH6Hl9o5bwyxLHt4ubL4geJIwaGGsCX
 84DrTdFECEObXcde4nLjSNcV+wmyXK79uzL3rQlntQQm6NPGU5DPXN1ThtuCqt573RYS
 Tr86Z0A5SrGMU044/5kOOidMUOBpsJY9GISJq5IfVOklq0HdSFJp4dlptw0TrTZXIJ7u
 RqOx2UynkYJK0+q9UWGPzzOECtJZ/unpg+7kgaus92v+A6tr0Zp/JtJ3rtzdZW8I7h4U
 mBm1yxBMFGfKYliIL11QKbR4cvbZpE4QiKTzgPK/yUCCpJLYbAGyn+GEUFnHqI/7CzSr
 AJhA==
X-Gm-Message-State: APjAAAWPFuc/8A5igHscZwMeylN5TRNDrTzqG7z2nP4+zyb8Lp6vsiKA
 gMW0DoUZo88ye/IzFXLkZqbSxQ==
X-Google-Smtp-Source: APXvYqxvKprStAqdVyypXJpegvM61kwochDKE/AbVUmkUROg08eJUHMB8Y605duz88Pc36qg+GbAYw==
X-Received: by 2002:a2e:880d:: with SMTP id x13mr8142330ljh.72.1558615909344; 
 Thu, 23 May 2019 05:51:49 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:48 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/9] staging: kpc2000: add missing asterisk in comment
Date: Thu, 23 May 2019 14:51:37 +0200
Message-Id: <20190523125143.32511-4-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523125143.32511-1-simon@nikanor.nu>
References: <20190523125143.32511-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaC5wbCBlcnJvciAiY29kZSBpbmRlbnQgc2hvdWxkIHVzZSB0YWJzIHdo
ZXJlIHBvc3NpYmxlIi4KClNpZ25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5p
a2Fub3IubnU+Ci0tLQogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2Jl
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUu
YyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCmluZGV4IGI1
NTlhZGUwNGFjYS4uOTQ1ZDhlNGU3YmE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3Bj
MjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGMyMDAwL2NlbGxfcHJvYmUuYwpAQCAtMjUsNyArMjUsNyBAQAogICogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEQgICAgICAgICAg
ICAgICAgICAgQzJTIERNQSBQcmVzZW50CiAgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERERCAgICAgICAgICAgICAgICBDMlMg
RE1BIENoYW5uZWwgTnVtYmVyICAgIFt1cCB0byA4IGNoYW5uZWxzXQogICogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJSSAg
ICAgICAgICAgICAgSVJRIENvdW50IFswIHRvIDMgSVJRcyBwZXIgY29yZV0KLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAxMTExMTExMDAwCisgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgMTExMTExMTAwMAogICogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElJSUlJ
SUkgICAgICAgSVJRIEJhc2UgTnVtYmVyIFt1cCB0byAxMjggSVJRcyBwZXIgY2FyZF0KICAqICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgX19fICAgIFNwYXJlCiAgKgotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
