Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5537C27BE1
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 13:36:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D364B8676E;
	Thu, 23 May 2019 11:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8TJe3C-zdNTo; Thu, 23 May 2019 11:36:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 645CA866F0;
	Thu, 23 May 2019 11:36:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5E021BF422
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B30E986701
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U7mp03BnbluJ for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 11:36:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3A55E86640
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:36:40 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id n134so4123457lfn.11
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 04:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MMfGJf5frnUDLRDsQYeuqMunOFEwSP2w0GYWkV6PgaI=;
 b=XAtK57P0NZaxIhWEoFwQxeeQk0DFldgXk/hYNnvn36KLtzGgyXnm+oNoWdK6Z0zkk7
 +JgWI6BDBU83ZcE1znfUsuShCPqqGJN0NOfoNxKMWNRQr1QwkPnd0MfFh2xkwNek14LR
 yb+XQv875anXhOLnQJHqqoo1bAZ/a2Q/n9KkSMRTZQGgFSDkjAEpKKGLLPPW+n113l7a
 XG45xGvcfgZ+N4JNtcv5cBW4+DxBH8/40LBmVZNu19IzlVnscV9d1Ew8Uf6ddAoGmFNN
 8LnDwcjW+WMnTScaP/Bw34cT2Nz7o5WhYpcAuqrMz4DuhTi3CUMBlatKwa745yFSk/Vs
 GXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MMfGJf5frnUDLRDsQYeuqMunOFEwSP2w0GYWkV6PgaI=;
 b=fKaJyCIhCTK4B/l5AUf255pOdKqJXOBjhfbHEfm1Klri7PhbzjGEapp3AbzmmjWMsB
 2n65uWvbDmo9wmb1OwP0jjD7J254Qa7zC24Nf7V3fkIZh1ABq30ni8IJ10gJioCGXW28
 YqsLL3Ya1qy+9AQmA67Y+ADXVScpLYhfcZRv8y1rc7dl73EqY+WXFWEiYJfJHAsvutOn
 t6IbugizmqMgdpLd3ktXST65qGBIlr1Y1BUusa8124pNGcorxCXELfxZwZa2FTmrS7FH
 rOozqnehDZOUgpb6X2wwyzu+nBwows/GCdpATx4WBUxYSMl7ejx3VoYbHSiFEsj+pTjR
 fJ2Q==
X-Gm-Message-State: APjAAAX10CBlsozsH82FJ+7FvjmIe4LxkBn9xsbXsNXnkIhMNYXA3FQp
 cL2rJlg/Z7yzwt+RMJ7LKNa/3A==
X-Google-Smtp-Source: APXvYqyeGFkmgQDfdbxxObn5avwCTog9iSt4jZ/lHZZHaqQNyYwSHPi1nHkwQuKtdATqm5FLL3IHWA==
X-Received: by 2002:ac2:4c36:: with SMTP id u22mr1907383lfq.33.1558611398327; 
 Thu, 23 May 2019 04:36:38 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id d68sm5269287lfg.23.2019.05.23.04.36.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 04:36:37 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 8/8] staging: kpc2000: remove unnecessary include in
 cell_probe.c
Date: Thu, 23 May 2019 13:36:13 +0200
Message-Id: <20190523113613.28342-9-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523113613.28342-1-simon@nikanor.nu>
References: <20190523113613.28342-1-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJVc2UgI2luY2x1ZGUgPGxpbnV4L2lvLmg+IGlu
c3RlYWQgb2YKPGFzbS9pby5oPiIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxz
aW1vbkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2Vs
bF9wcm9iZS5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jIGIvZHJpdmVy
cy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKaW5kZXggYjFjZTFlNzE1ZDlh
Li4wMDAwNTAxN2M4NTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIw
MDAvY2VsbF9wcm9iZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2Vs
bF9wcm9iZS5jCkBAIC00LDcgKzQsNiBAQAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAjaW5j
bHVkZSA8bGludXgvZXhwb3J0Lmg+CiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgotI2luY2x1ZGUg
PGFzbS9pby5oPgogI2luY2x1ZGUgPGxpbnV4L2lvLmg+CiAjaW5jbHVkZSA8bGludXgvaW8tNjQt
bm9uYXRvbWljLWxvLWhpLmg+CiAjaW5jbHVkZSA8bGludXgvbWZkL2NvcmUuaD4KLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
