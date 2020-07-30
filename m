Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38D62333BE
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 16:04:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65D5688408;
	Thu, 30 Jul 2020 14:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pc-TYfAddlzv; Thu, 30 Jul 2020 14:04:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6296E8836E;
	Thu, 30 Jul 2020 14:04:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 599041BF294
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 14:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4BFD62107A
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 14:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r1XdWIURlR+P for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 14:04:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 28300207B0
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 14:04:46 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id q17so14203952pls.9
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 07:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZvBujrZbpHTyFtf4aDyQcSP+scQySwGgnJgI3//5ECY=;
 b=Z1WD+vmRUTNVztgbMjp2ehhOi3ixY+RUkMPLYgxVngJTaX+/d8F8KS8ZV9C0VuN3lw
 Bq/BBCJG0wb5rKMSuI+d98nZg5ku3/NG16GZnkXwNrQfkzOFxCzTS6DMriXXSKRcGRkf
 Fdfol1Ay48UxOgEOW6jWWlVwEmwNA5ZrrTOLbSw4NSAMAJ7XZGdUPgRTDupgqu7ZMDFC
 oQ4Yx0aV4uI3gadiUDXJMYwhuZcEhEJfCzoL9FpjMByaq5a0Nczw8aEYcZvwpS+sZtC/
 /A5POXMfpcb3wLIRWEH8+8vNcF1xwT7cBuCyndHTRS09Kof/u0qLSQIBZP7OOnzWAxl7
 2PnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZvBujrZbpHTyFtf4aDyQcSP+scQySwGgnJgI3//5ECY=;
 b=KMJKrLpGh0sU+JbmxKuToYcCjTXQAEH7aN8Zzz+ZbQfV4TN+5+/1PF9WscZAKsmlxv
 sv0QCnbJQpE/+ycSC0QBtbKJnqfCV1vgig2aJwOgwUobPuZLaFXM9ZhGWwQ7G/FvO0oc
 m5K+BiezToqL/FZd2PIB2U+wOS9YIyhkgWnkqIVp4o/nVSfOJ138gJ8uWKH1uiv6GYeW
 hM8XcljkUBSgV6p7AebSlmy89+xEK9uYztTQa0ccTAoE3DMr1tFoM2Cm9IQPq7IsQ1tP
 hieozo37iDH5j7In1JI+atvo/Ngpjc4VFL/6dpzG56m7dUNPG2CzGewPZo0FEvWnwmrS
 e2pw==
X-Gm-Message-State: AOAM5313AZ3fA3lquB7ZDN0m8+nuV1FjEjR+lHh9qnGy5EiLCgD60uCs
 LjmK+Ov3XR1ppPb7pztOEto=
X-Google-Smtp-Source: ABdhPJwmoDlh7vnJf/uBuu29Ec5+DQgH2UXB080ZHlB6VeyOQuaxQY51BY+zrbaJEe2ZTSYNq5asSA==
X-Received: by 2002:a63:4a0e:: with SMTP id x14mr36113319pga.271.1596116273386; 
 Thu, 30 Jul 2020 06:37:53 -0700 (PDT)
Received: from yangdongdo-OptiPlex-9010.mioffice.cn ([209.9.72.214])
 by smtp.gmail.com with ESMTPSA id c139sm5987441pfb.65.2020.07.30.06.37.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jul 2020 06:37:52 -0700 (PDT)
From: Dongdong Yang <contribute.kernel@gmail.com>
To: gregkh@linuxfoundation.org, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 mingo@redhat.com, peterz@infradead.org, juri.lelli@redhat.com,
 vincent.guittot@linaro.org, dietmar.eggemann@arm.com, rostedt@goodmis.org,
 bsegall@google.com, mgorman@suse.de
Subject: [PATCH] sched: Provide USF for the portable equipment.
Date: Thu, 30 Jul 2020 21:35:42 +0800
Message-Id: <cover.1596101307.git.yangdongdong@xiaomi.com>
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
IHByb3ZpZGVzIFVTRihVc2VyIFNlbnNpdGl2ZSBGZWVkYmFjayBmYWN0b3IpCmF1eGlsaWFyeSBj
cHVmcmVxIGdvdmVybm9yIHRvIHN1cHBvcnQgaGlnaCBsZXZlbCBsYXllcgpzeXNmcyBpbm9kZXMg
c2V0dGluZyBmb3IgdXRpbHMgYWRqdXN0bWVudCBwdXJwb3NlIGZyb20KdGhlIGlkZW50aWZpZWQg
c2NlbmFyaW8gb24gcG9ydGFibGUgZXF1aXBtZW50LgpCZWNhdXNlIHRoZSBwb3dlciBjb25zdW1w
dGlvbiBhbmQgVUkgcmVzcG9uc2UgYXJlIG1vcmUKY2FyZWQgZm9yIGJ5IHBvcnRhYmxlIGVxdWlw
bWVudMKgdXNlcnMuIEFuZCB0aGUgInNjcmVlbgpvZmYiIHN0YXR1cyBzdGFuZHMgZm9yIG5vIHJl
cXVlc3QgZnJvbSB0aGUgdXNlciwgaG93ZXZlciwKdGhlIGtlcm5lbCBpcyBzdGlsbCBleHBlY3Rl
ZCB0byBub3RpZnkgdGhlIHVzZXIgaW4gdGltZQpvbiBtb2RlbSwgbmV0d29yayBvciBwb3dlcmtl
eSBldmVudHMgb2NjdXIuIFVTRiBwcm92aWRlcwoic2NoZWRfdXNmX25vbl91eF9yIiBzeXNmcyBp
bm9kZSB0byBjdXQgZG93biB0aGUgdXRpbHMKZnJvbSB1c2VyIHNwYWNlIHRhc2tzIGFjY29yZGlu
ZyB0byBoaWdoIGxldmVsIHNjZW5hcmlvLgpJbiBhZGRpdGlvbiwgaXQgdXN1YWxseSBoaW50cyBt
b3JlIGNwdWZyZXEgZGVtYW5kIHRoYXQKdGhlIHByZWVtcHRpdmUgY291bnRzIG9mIHRoZSB0YXNr
cyBvbiB0aGUgY3B1IGJ1cnN0IGFuZApvdmVyIHRoZSB1c2VyIGV4cGVjdGluZyBjb21wbGV0ZWQg
dGltZSBzdWNoIGFzIHRoZSByYXRpbwpzeXNjdGxfc2NoZWRfbGF0ZW5jeSB0byBzeXNjdGxfc2No
ZWRfbWluX2dyYW51bGFyaXR5Cm9uICJzY3JlZW4gb24iIHN0YXR1cywgd2hpY2ggbW9yZSBsaWtl
bHkgd2l0aCBtb3JlIFVJLgpUaGUgc3lzZnMgaW5vZGVzICJzY2hlZF91c2ZfdXBfbDBfciIgYW5k
ICJzY2hlZF91c2ZfZG93bl9yIgpoYXZlIGJlZW4gcHJvdmlkZWQgdG8gYWRqdXN0IHRoZSB1dGls
cyBhY2NvcmRpbmcgdG8gaGlnaApsZXZlbCBpZGVudGlmaWVkIHNjZW5hcmlvIHRvIGFsbG9jIHRo
ZSBjcHVmcmVxIGluIHRpbWUuCgpEb25nZG9uZyBZYW5nICgxKToKICBzY2hlZDogUHJvdmlkZSBV
U0YgZm9yIHBvcnRhYmxlIGVxdWlwbWVudC4KCiBkcml2ZXJzL3N0YWdpbmcvS2NvbmZpZyAgICAg
ICAgICB8ICAgMiArCiBkcml2ZXJzL3N0YWdpbmcvTWFrZWZpbGUgICAgICAgICB8ICAgMSArCiBk
cml2ZXJzL3N0YWdpbmcvZmJzY2hlZC9LY29uZmlnICB8ICAxMCArKwogZHJpdmVycy9zdGFnaW5n
L2Zic2NoZWQvTWFrZWZpbGUgfCAgIDIgKwogZHJpdmVycy9zdGFnaW5nL2Zic2NoZWQvdXNmLmMg
ICAgfCAzNTEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBrZXJuZWwv
c2NoZWQvY3B1ZnJlcV9zY2hlZHV0aWwuYyB8ICAxMSArLQogNiBmaWxlcyBjaGFuZ2VkLCAzNzYg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
c3RhZ2luZy9mYnNjaGVkL0tjb25maWcKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdp
bmcvZmJzY2hlZC9NYWtlZmlsZQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9m
YnNjaGVkL3VzZi5jCgotLSAKMi43LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
