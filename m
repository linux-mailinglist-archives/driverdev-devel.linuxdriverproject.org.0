Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EF15F292
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 08:08:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F1A4485EA5;
	Thu,  4 Jul 2019 06:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w5Hm0LxQ+ge6; Thu,  4 Jul 2019 06:08:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 803BF87E30;
	Thu,  4 Jul 2019 06:08:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27DAC1BF340
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 06:08:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2438C84483
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 06:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KjviRWcYKIrm for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 06:08:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 45EBA8410C
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 06:08:21 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id 205so4906181ljj.8
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 23:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r0OL21aoHCmJUqSyRuOUM6JM8EbwmZkWEvcS1f/VXQc=;
 b=pisRV2Ql3caw37w/QiGUOintN93G2+qRu20I6q2ASQHFK062ygqw8DiWiyOgkuMFyC
 R3MJKsqM8VXcZ/8UU32WRTw4NhVeyj3u5UHMHC35teZWLGp+2z2l33Qy2UilGIm2QQdg
 ODNSbSZZ5fRl+2AKebqHNOTbwqKTpHxpeosS2fsXPIk4GAfiCBVq+A5+60Ggjb31u2z9
 2YqlqAg7BCipF+lk7+uUABXVyhJ8uOA0NApR/D7CyzloDa4rYHRBkpPpCkO3l0MqlXdg
 HiGP6/b5Pat1u9zL5GFx2afzoaIuiRbS27DEfUihOR5OMjeBD75QFv9eG07Y+1TT0LyF
 80Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r0OL21aoHCmJUqSyRuOUM6JM8EbwmZkWEvcS1f/VXQc=;
 b=t7AhEz1FQqLFf2EHB7rh1Q/72wyTWaBOf/Wf+p8Ts5fi4dmQ/WVAiHkBzEcY+CTVqE
 orIWhq8AbGvpZiv8JiO6XWjPT7psGUr/iTfeOYkxkOw2Rfo2lkS6TgnVRAQ5l9Lcv0Tj
 Vu/PoLwmpCH1eabSRY2UE2aVb7PRdGXPHDPDCXCxKvupMbaQRMsE1jblAptWW58FgizW
 xVLojb8YlPiIIAonhzC9GBcbK7HAQCa3IxlcRaBdl4QQHz5V3eQ7Bmrt9fhVrMkycfJY
 fVzLGCIW7mq2UYxKP/DFBABITvmVliuBxFpg/FNhRvlt5ZnRhjW98l1ZNAq+fNsKh5ms
 SeBA==
X-Gm-Message-State: APjAAAUH8dPX6e6snNrNwmeikYvTRy4amK12OXtGLQFvN2C2C8ly1jDO
 9pIW2Dx5Q3htyxvHrZvmp+Ff3w==
X-Google-Smtp-Source: APXvYqzOsXtBUXJs0TfRsT8D7cp3MEyHCUv0RtiN18pdJ1gLOipAwZAXHhpPYU5ZHSciK3oCZAebog==
X-Received: by 2002:a2e:86c1:: with SMTP id n1mr7144917ljj.162.1562220499357; 
 Wed, 03 Jul 2019 23:08:19 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id b4sm710440lfp.33.2019.07.03.23.08.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 23:08:18 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/3] Simplify NULL comparisons in staging/kpc2000
Date: Thu,  4 Jul 2019 08:08:08 +0200
Message-Id: <20190704060811.10330-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpUaGVzZSBwYXRjaGVzIHNpbXBsaWZpZXMgYSBmZXcgY29tcGFyaXNvbnMgdG8gTlVMTCAo
ImZvbyA9PSBOVUxMIiA9PgoiIWZvbyIpIGluIHN0YWdpbmcva3BjMjAwMCwgYXMgcmVwb3J0ZWQg
YnkgY2hlY2twYXRjaC5wbC4KCi0gU2ltb24KClNpbW9uIFNhbmRzdHLDtm0gKDMpOgogIHN0YWdp
bmc6IGtwYzIwMDA6IHNpbXBsaWZ5IGNvbXBhcmlzb24gdG8gTlVMTCBpbiBrcGMyMDAwX3NwaS5j
CiAgc3RhZ2luZzoga3BjMjAwMDogc2ltcGxpZnkgY29tcGFyaXNvbiB0byBOVUxMIGluIGRtYS5j
CiAgc3RhZ2luZzoga3BjMjAwMDogc2ltcGxpZnkgY29tcGFyaXNvbiB0byBOVUxMIGluIGZpbGVv
cHMuYwoKIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfc3BpLmMgICAgIHwgNCArKy0t
CiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfZG1hL2RtYS5jICAgICB8IDQgKystLQogZHJp
dmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMgfCAyICstCiAzIGZpbGVzIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
