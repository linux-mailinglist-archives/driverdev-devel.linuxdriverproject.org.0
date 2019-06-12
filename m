Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8160E42838
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 15:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A70A88042;
	Wed, 12 Jun 2019 13:58:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SlLMQITeDAK0; Wed, 12 Jun 2019 13:58:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4134D87FC9;
	Wed, 12 Jun 2019 13:58:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1AD81BF339
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 13:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DEDD1876D1
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 13:58:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fMf0mAXtmFwk for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 13:58:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9CA86876C3
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 13:58:48 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id z15so9504501lfh.13
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 06:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=df7h8XbfBjQ7PT3PnDdcy3ikJ1Yz667tuld2uk1NxPc=;
 b=tZDCsWFoxx/9s8Pjlf4oWRhkFr+Ab/cFt9QZKV4C0IA1K7KtM/MLM+Rz0Cbla/y116
 bFcnPumnaW5ZKF6lji8/jrzUMuzXcCSRx3TI7MQstdnNwI5ryGsVmfQI414A0WUjyzjF
 DX+/NfVQu982noklSvGeB17UFoQcPS8Low2EQWoHtXzXuthe/lq6kwB7ZAcywX3RFz9u
 lseBKVtE1ZjFQoi9OS3dRVDWir139Ncj73p0YExgZd2bLfZnLUM3whdoobAe490RNw9u
 EkMNPrbpolWWie4GMMuNY5GR3onvu6FuK1VCiT8s6aT7f/Ls3ZRxXA/HuLlT48caGBVE
 Vk1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=df7h8XbfBjQ7PT3PnDdcy3ikJ1Yz667tuld2uk1NxPc=;
 b=EgtlzC+tV1ZVnEyfEjWpl2PV9srJlwiUsIpU5UjCsuetr5lew3Tcy4fE2YT+pDBdg/
 dU7r8NechA8SuzS4WypyCtrgpTitnMdbJFrkIRacQuFHmHF61MM9Jh788LOVQNYDnKyj
 jKkmrsiMRDWHLwNOZt8Ec0EEA9HQ/je3d6RJhGIK+j4Ewy/IaHgGzKDVa3fBOml/NQEv
 jiZ4ZGVqinvTYaA/8j3kAxC6NP2+LHwUIW6zK4T75vgyLchZNdy9EgvqwY/Peh4XcKCk
 lGbvvnMtPuBaHA6hiHI5H/rXNusHRaHCpW4rekmpKcSFxWOZelV0hre0kdOcEDkOSnGK
 duoA==
X-Gm-Message-State: APjAAAWrwhAI6ECdZkpZD6Q2DcJFJ0C/4US/DD7Z9KhzPv65LqY1jO6e
 mnMwysi+6///d9UsdslkI/w8/w==
X-Google-Smtp-Source: APXvYqwFPBhjcJcSHHMP7YRorWH1Ods0kRvh+DZaB1OW4q7ldZF83QIKr1lUqXvhpRf/g6Rgh2fgpQ==
X-Received: by 2002:a19:e619:: with SMTP id d25mr41854421lfh.34.1560347926118; 
 Wed, 12 Jun 2019 06:58:46 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x194sm2621999lfa.64.2019.06.12.06.58.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 06:58:45 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/2] staging: kpc2000: minor fixes in kp2000_pcie_probe
Date: Wed, 12 Jun 2019 15:58:34 +0200
Message-Id: <20190612135836.23009-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610200535.31820-1-simon@nikanor.nu>
References: <20190610200535.31820-1-simon@nikanor.nu>
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

VGhlc2UgdHdvIHBhdGNoZXMgZml4ZXMgaXNzdWVzIHBvaW50ZWQgb3V0IGJ5IERhbiBpbiBhIHBy
ZXZpb3VzCnN0YWdpbmcva3BjMjAwMCBwYXRjaCB0aHJlYWQ6IG1hbnkgY29tbWVudHMgaW4ga3Ay
MDAwX3BjaWVfcHJvYmUganVzdApyZXBlYXRzIHRoZSBjb2RlIGFuZCB0aGUgY3VycmVudCBsYWJl
bCBuYW1lcyBkb2Vzbid0IGFkZCBhbnkgaW5mb3JtYXRpb24KYW5kIG1ha2VzIGl0IGhhcmQgdG8g
Zm9sbG93IHRoZSBjb2RlLgoKUmVuYW1lIGFsbCBsYWJlbHMgYW5kIHJlbW92ZSB0aGUgY29tbWVu
dHMgdGhhdCBqdXN0IHJlcGVhdHMgdGhlIGNvZGUuCgpWZXJzaW9uIDI6CiAtIERvbid0IGNvbnZl
cnQgQyBzdHlsZSBjb21tZW50cyB0byBDKysgc3R5bGUKClNpbW9uIFNhbmRzdHLDtm0gKDIpOgog
IHN0YWdpbmc6IGtwYzIwMDA6IGltcHJvdmUgbGFiZWwgbmFtZXMgaW4ga3AyMDAwX3BjaWVfcHJv
YmUKICBzdGFnaW5nOiBrcGMyMDAwOiByZW1vdmUgdW5uZWNlc3NhcnkgY29tbWVudHMgaW4ga3Ay
MDAwX3BjaWVfcHJvYmUKCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYyB8
IDgwICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0
aW9ucygrKSwgNTUgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
