Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B312346AC
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 15:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5D9A8699B;
	Fri, 31 Jul 2020 13:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id axid0965degK; Fri, 31 Jul 2020 13:15:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 719488689B;
	Fri, 31 Jul 2020 13:15:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 689E61BF27C
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 13:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 649EC88642
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 13:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZRY+JKVCgsl for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 13:15:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D5D748862C
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 13:15:53 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d1so17355099plr.8
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 06:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IpiXoaEfhRVC/TiOprnmSx5/CzTTYxkk2Z3fpn71RCE=;
 b=Ic8H8EqmDSiSpRlFWR3J+0nYg5rJVN9lTRx3pbXRJk5H057eGeXS2L44ZflLe4pnUd
 ww53jvYTDHPsM3TNbxQ3Vk6U25m/f41g+8cw0R93ZhglrpxPf5k+her8E7JzOLWfCzWc
 E5WDl5nYtmPUtb7tLD8Psik/MuMduSFHyNKhJJMpfc9i2/Hix6hzSWFTE38sRKlrZq3/
 wkxqWytqUHfJUIV/VAWOvnOdrj3LDT2i04f+SnUsR8pXKsOIo80tO6vAq/xNL6bKlmkh
 CgkcyvnAmgQGcTAICZEfrC27wZsooZNqa8KFofw/xUyuZSW1ra81lWW4P46fPAsNH700
 IR5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IpiXoaEfhRVC/TiOprnmSx5/CzTTYxkk2Z3fpn71RCE=;
 b=AMD4gIYkprm86dzz8ehAWdk2HfID8J/gRBJFZMkSsk4wJgoESSXx8H5F88NVEJRBkC
 1gy/8Xhh83JHG0eSS4gPNWG4djOITGoPWPr2TwaTL1xJwhLdsUJ1z+B/lSXBUKJb41HC
 bdQXzU/n/gaj+oPpVsqScasKWh4/QmdVfIFKMZFFEUxcqD5ptlkL1BOboT0btJpLEJKW
 5qJVouOi1xUmDLwEc/IHsQ4ZNxF+UELlPYcJGTEJ1WpdWsYoGb4fK48Vo3sQ98Cbo9Sg
 Uj+fLGNZYtZgEHWWEK+tiO9RXNKvBdNVY9cHFtLXbkIOGUHfhYP7XdpUBY2/tIUQPY7X
 ZOIQ==
X-Gm-Message-State: AOAM532pDYSsq84/KsVvrzWjK4UDtiSyvycwz262wDCQEI2sJmeTagEu
 WC/s9lUESBWpxw/qXgB0WQXcAuDHFfrZUw==
X-Google-Smtp-Source: ABdhPJy9d85FEkeqqnEQaC/Th8l7Zp8/PAymqCSZ0KRDh7yYuZath1yYVLNCx1hLxXaUKzfBpI9JyA==
X-Received: by 2002:a65:4507:: with SMTP id n7mr3511459pgq.180.1596199720490; 
 Fri, 31 Jul 2020 05:48:40 -0700 (PDT)
Received: from yangdongdo-OptiPlex-9010.mioffice.cn ([209.9.72.214])
 by smtp.gmail.com with ESMTPSA id m20sm10378742pgn.62.2020.07.31.05.48.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 Jul 2020 05:48:40 -0700 (PDT)
From: Dongdong Yang <contribute.kernel@gmail.com>
To: gregkh@linuxfoundation.org, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 mingo@redhat.com, peterz@infradead.org, juri.lelli@redhat.com,
 vincent.guittot@linaro.org, dietmar.eggemann@arm.com, rostedt@goodmis.org,
 bsegall@google.com, mgorman@suse.de
Subject: [PATCH v2] Provide USF for the portable equipment.
Date: Fri, 31 Jul 2020 20:46:29 +0800
Message-Id: <cover.1596196060.git.yangdongdong@xiaomi.com>
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
ZQpjcHVmcmVxIGluIHRpbWUuCgpDaGFuZ2VzIGluIHYyCiAgLSBBZGQgYWRqdXN0X3Rhc2tfcHJl
ZF9zZXQgc3dpdGNoLgogIC0gTW92ZSBhZGp1c3RfdGFza19wcmVkX2RlbWFuZCBkZWNsYXJhdGlv
biBpbnRvIHNjaGVkLmgKICAtIFVwZGF0ZSBjb21tZW50cy4KCkRvbmdkb25nIFlhbmcgKDEpOgog
IHNjaGVkOiBQcm92aWRlIFVTRiBmb3IgdGhlIHBvcnRhYmxlIGVxdWlwbWVudC4KCiBkcml2ZXJz
L3N0YWdpbmcvS2NvbmZpZyAgICAgICAgICB8ICAgMiArCiBkcml2ZXJzL3N0YWdpbmcvTWFrZWZp
bGUgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL3N0YWdpbmcvZmJzY2hlZC9LY29uZmlnICB8ICAx
MCArKwogZHJpdmVycy9zdGFnaW5nL2Zic2NoZWQvTWFrZWZpbGUgfCAgIDIgKwogZHJpdmVycy9z
dGFnaW5nL2Zic2NoZWQvdXNmLmMgICAgfCAzNDYgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCiBrZXJuZWwvc2NoZWQvY3B1ZnJlcV9zY2hlZHV0aWwuYyB8ICAgMyArCiBr
ZXJuZWwvc2NoZWQvc2NoZWQuaCAgICAgICAgICAgICB8ICAxMCArKwogNyBmaWxlcyBjaGFuZ2Vk
LCAzNzQgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9m
YnNjaGVkL0tjb25maWcKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvZmJzY2hl
ZC9NYWtlZmlsZQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9mYnNjaGVkL3Vz
Zi5jCgotLSAKMi43LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
