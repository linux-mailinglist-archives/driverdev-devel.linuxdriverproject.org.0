Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 369A723A890
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 16:33:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA356204E8;
	Mon,  3 Aug 2020 14:33:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FLZ2YE4eanhb; Mon,  3 Aug 2020 14:33:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A6B7E203FF;
	Mon,  3 Aug 2020 14:33:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0215A1BF3AD
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 14:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB3A2879A5
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 14:33:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PTaZoYiYzij4 for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 14:33:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6A848798A
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 14:33:26 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id h12so8535360pgf.7
 for <devel@driverdev.osuosl.org>; Mon, 03 Aug 2020 07:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CSryihUrOfV/QpASOmMQXnPhqAteV/tdNxvfNf+2Xfg=;
 b=f6NQsPx1SkjRWIIzrAvw+PGh7OTrPeRIjU09/5f1HbEsEBW3tw9g0Ar8D+a8idmOb4
 5FTeGXd2+X2YtudoVzwpciidf2SUXhlbjHbPx6B/XR3tcXvBBWcbiSoeoa46lHW2N8Hg
 p6Kc+bkMd02lDhTNFpL3vxsLMIZkPTai+FCiRW/lVS/lTNEydmuQ7uwyaJ5JHrJVtbCb
 LxxcQ47FRB/UgRGX11GVDSIcxnXRu0gtVOXSvaLrGUI5utT828y27TVT8gtINMCh4pOK
 P4doXOcAx6+88uFgzha2bpxsf14ck6e/d+qZ3BVSEbEzFT0D6G9xliA+Xl72rGid/RGL
 REFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CSryihUrOfV/QpASOmMQXnPhqAteV/tdNxvfNf+2Xfg=;
 b=V3Ea2hByptqgW2zZrQS3ykrSbim9WcU9lmLSL4Ud69f4JPrq9Cibv3VpNQha0Ynzuq
 14ADoYQnuzyfNzCvPxs5I+RbU+MC2K+KIY5JLUWW5/mJTetyq2U/Shm8zymB5zHNuPM6
 CYY5kjbDI3fusdeMHZ8x+KSbU7dET6yWtoG0h/9BOGt51MGBMh+qtRvWt9uDutc9ocFt
 ekJAkhhGzdf3HT5XDN5e4kpN0NsnX55qJm4u7fYtWKHi+0Y2dpHk4RbWtSeDfFnG+ZKS
 JKBlw0PbUQ+jUJPx3VQ3lUjcMUVpXEAX1YVTpI63eBxGUDGazTPonsuGDIQE+CbchjYM
 pl5w==
X-Gm-Message-State: AOAM530s4g+1/CUt6FZR8tm7t7NwGewx0FDuXxjHXwSRLf5u4SxIftwq
 /5VdhF8OgOFYMYRWXilYylM=
X-Google-Smtp-Source: ABdhPJw8jUAIC6cPasGvqz562zsJjwF1GyLzlxHbXTTNNN7GXWCblmsAa3t3KFutJ5N751+aeL6uNw==
X-Received: by 2002:a62:19c4:: with SMTP id 187mr15865681pfz.312.1596465205971; 
 Mon, 03 Aug 2020 07:33:25 -0700 (PDT)
Received: from yangdongdo-OptiPlex-9010.mioffice.cn ([209.9.72.214])
 by smtp.gmail.com with ESMTPSA id x20sm15849188pgc.49.2020.08.03.07.33.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Aug 2020 07:33:25 -0700 (PDT)
From: Dongdong Yang <contribute.kernel@gmail.com>
To: gregkh@linuxfoundation.org, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 mingo@redhat.com, peterz@infradead.org, juri.lelli@redhat.com,
 vincent.guittot@linaro.org, dietmar.eggemann@arm.com, rostedt@goodmis.org,
 bsegall@google.com, mgorman@suse.de
Subject: [PATCH v3] Provide USF for the portable equipment.
Date: Mon,  3 Aug 2020 22:31:14 +0800
Message-Id: <cover.1596464894.git.yangdongdong@xiaomi.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, gulinghua@xiaomi.com, tanggeliang@xiaomi.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 yangdongdong@xiaomi.com, duhui@xiaomi.com, zhangguoquan@xiaomi.com,
 fengwei@xiaomi.com, taojun@xiaomi.com, rocking@linux.alibaba.com,
 huangqiwu@xiaomi.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogRG9uZ2RvbmcgWWFuZyA8eWFuZ2Rvbmdkb25nQHhpYW9taS5jb20+CgpUaGlzIHBhdGNo
IHByb3ZpZGVzIFVTRihVc2VyIFNlbnNpdGl2ZSBGZWVkYmFjayBmYWN0b3IpIGF1eGlsaWFyeQpj
cHVmcmVxIGdvdmVybm9yIHRvIHN1cHBvcnQgaGlnaCBsZXZlbCBsYXllciBzeXNmcyBpbm9kZXMg
c2V0dGluZwpmb3IgdXRpbHMgYWRqdXN0bWVudCBwdXJwb3NlIGZyb20gdGhlIGlkZW50aWZpZWQg
c2NlbmFyaW8gb24gcG9ydGFibGUKZXF1aXBtZW50LiBCZWNhdXNlIHRoZSBwb3dlciBjb25zdW1w
dGlvbiBhbmQgVUkgcmVzcG9uc2UgYXJlIG1vcmUgY2FyZWQKZm9yIGJ5IHBvcnRhYmxlIGVxdWlw
bWVudMKgdXNlcnMuIEFuZCB0aGUgInNjcmVlbiBvZmYiIHN0YXR1cyBzdGFuZHMgZm9yCm5vIHJl
cXVlc3QgZnJvbSB0aGUgdXNlciwgaG93ZXZlciwgdGhlIGtlcm5lbCBpcyBzdGlsbCBleHBlY3Rl
ZCB0bwpub3RpZnkgdGhlIHVzZXIgaW4gdGltZSBvbiBtb2RlbSwgbmV0d29yayBvciBwb3dlcmtl
eSBldmVudHMgb2NjdXIuIFVTRgpwcm92aWRlcyAic2NoZWRfdXNmX25vbl91eF9yIiBzeXNmcyBp
bm9kZSB0byBjdXQgZG93biB0aGUgdXRpbHMgZnJvbQp1c2VyIHNwYWNlIHRhc2tzIGFjY29yZGlu
ZyB0byBoaWdoIGxldmVsIHNjZW5hcmlvLiBJbiBhZGRpdGlvbiwgaXQKdXN1YWxseSBoaW50cyBt
b3JlIGNwdWZyZXEgZGVtYW5kIHRoYXQgdGhlIHByZWVtcHRpdmUgY291bnRzIG9mIHRoZQp0YXNr
cyBvbiB0aGUgY3B1IGJ1cnN0IGFuZCBvdmVyIHRoZSB1c2VyIGV4cGVjdGluZyBjb21wbGV0ZWQg
dGltZSBzdWNoCmFzIHRoZSByYXRpbyBzeXNjdGxfc2NoZWRfbGF0ZW5jeSB0byBzeXNjdGxfc2No
ZWRfbWluX2dyYW51bGFyaXR5IG9uCiJzY3JlZW4gb24iIHN0YXR1cywgd2hpY2ggbW9yZSBsaWtl
bHkgd2l0aCBtb3JlIFVJLiBUaGUgc3lzZnMgaW5vZGVzCiJzY2hlZF91c2ZfdXBfbDBfciIgYW5k
ICJzY2hlZF91c2ZfZG93bl9yIiBoYXZlIGJlZW4gcHJvdmlkZWQgdG8gYWRqdXN0CnRoZSB1dGls
cyBhY2NvcmRpbmcgdG8gaGlnaCBsZXZlbCBpZGVudGlmaWVkIHNjZW5hcmlvIHRvIGFsbG9jIHRo
ZQpjcHVmcmVxIGluIHRpbWUuCgpDaGFuZ2VzIGluIHYzCiAgLSBNb3ZlIHVzZi5jIHRvIGtlcm5l
bC9zY2hlZC4KICAtIFJlbW92ZSB0cmFjZV9wcmludGsgYW5kIGRlYnVnZnMuCiAgLSBBZGQgZG9j
dW1lbnQgZHJhZnQuCiAgLSBVcGRhdGUgY29tbWVudHMuCgpDaGFuZ2VzIGluIHYyCiAgLSBBZGQg
YWRqdXN0X3Rhc2tfcHJlZF9zZXQgc3dpdGNoLgogIC0gTW92ZSBhZGp1c3RfdGFza19wcmVkX2Rl
bWFuZCBkZWNsYXJhdGlvbiBpbnRvIHNjaGVkLmgKICAtIFVwZGF0ZSBjb21tZW50cy4KCgpEb25n
ZG9uZyBZYW5nICgxKToKICBzY2hlZDogUHJvdmlkZSBVU0YgZm9yIHRoZSBwb3J0YWJsZSBlcXVp
cG1lbnQuCgogRG9jdW1lbnRhdGlvbi9zY2hlZHVsZXIvc2NoZWQtdWZzLnR4dCB8ICA3OCArKysr
KysrKysKIGRyaXZlcnMvY3B1ZnJlcS9LY29uZmlnICAgICAgICAgICAgICAgfCAgMTEgKysKIGRy
aXZlcnMvc3RhZ2luZy9LY29uZmlnICAgICAgICAgICAgICAgfCAgIDIgKwogZHJpdmVycy9zdGFn
aW5nL01ha2VmaWxlICAgICAgICAgICAgICB8ICAgMSArCiBpbmNsdWRlL3RyYWNlL2V2ZW50cy9z
Y2hlZC5oICAgICAgICAgIHwgIDM1ICsrKysKIGtlcm5lbC9zY2hlZC9NYWtlZmlsZSAgICAgICAg
ICAgICAgICAgfCAgIDEgKwoga2VybmVsL3NjaGVkL2NwdWZyZXFfc2NoZWR1dGlsLmMgICAgICB8
ICAgMyArCiBrZXJuZWwvc2NoZWQvc2NoZWQuaCAgICAgICAgICAgICAgICAgIHwgIDEwICsrCiBr
ZXJuZWwvc2NoZWQvdXNmLmMgICAgICAgICAgICAgICAgICAgIHwgMzA1ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDkgZmlsZXMgY2hhbmdlZCwgNDQ2IGluc2VydGlvbnMoKykK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL3NjaGVkdWxlci9zY2hlZC11ZnMudHh0
CiBjcmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL3NjaGVkL3VzZi5jCgotLSAKMi43LjQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
