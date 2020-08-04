Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BC923B615
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 09:52:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2006A874A7;
	Tue,  4 Aug 2020 07:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O9sJKdjJWaq9; Tue,  4 Aug 2020 07:52:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF4FB873B6;
	Tue,  4 Aug 2020 07:52:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAE9D1BF2A7
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 07:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92A502156E
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 07:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lJ4ZdsXZDB0E for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 07:52:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 68F1420347
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 07:52:44 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id j19so21648627pgm.11
 for <devel@driverdev.osuosl.org>; Tue, 04 Aug 2020 00:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zYEc+6a7E/gabrUW1l1oa9EKsDvyQIWgJXIkTHUE6P0=;
 b=MQKi9p+OTeU7KudYYa62FbuV/BULPjiYgzSkpxX0hFt239tzKILs5CMVfi2I1KxSZL
 GfihFA6OtXRLxRQZD7oKwMeU6KXG34wfOsADEs28IGhmmbGqiDHJdzpccC0r6xQi6DWC
 SmnN8OHk6s9e2JP/D9Q+JfazrLLzkvtesb7IIRikhyUkITFY5PbKPCZHHwbs2/apyclg
 eNcuyJ6WnVTf9qPR9vDJKs7jVfL8wIU6TsQX4MyyqBMwS1E5Vd7SgH1otpekCUFEz6p4
 PqxhKVpxcN5w3gGBM4dy1lH3mTxVsrUKrh4Mxpvh0oQEovzU9xkWFM83iZS3SVMQhlcV
 TaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zYEc+6a7E/gabrUW1l1oa9EKsDvyQIWgJXIkTHUE6P0=;
 b=TVHTUtQHQfYGwPCpP3H1ReKrbfOeJYTQUSYnGsHeMSM/k3WUFkxjkkPS8arLt1I5BZ
 mwCXi4/288cpMuMUAoxThKAw1yL6bsPgC6wfQeIFpO7PPfWecNowfnedZ7FN4BUdrKm5
 B8wZMkY1vFGIarusodjvxix1qOF+ZYDQjVk7zEK6DMKim2fdTklXbu1YLRNI12ovO+Wx
 QG5bv+vEV1UoAjQ1XEIC9cjzVQpD4O0RTNDzQ7TMl8IM6R5R5vPAgGIJoedEaAxwn7JQ
 ZZJEFG18WgpVRv1S+rF9JdXobdAe0LnCvuvniStR3JvsqT/1PMcE4zOdrGNOnnZF0/VT
 i+kA==
X-Gm-Message-State: AOAM530YJN6DkffU+mPLp3L1OSIWkeJfVLqZqzafUpa6R1qnCw+XSwFA
 qUy6IlVFYsDY9+Q5PSfymag=
X-Google-Smtp-Source: ABdhPJy5sW+NQlKW9dHOgTUY65Od+XjtI8kIDLJBPZM2/PUy6h7MzNiFxtnGDWcOudMFF6TPeijAeA==
X-Received: by 2002:a63:741b:: with SMTP id p27mr558733pgc.194.1596527563970; 
 Tue, 04 Aug 2020 00:52:43 -0700 (PDT)
Received: from yangdongdo-OptiPlex-9010.mioffice.cn ([209.9.72.214])
 by smtp.gmail.com with ESMTPSA id h18sm9462018pfo.21.2020.08.04.00.52.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Aug 2020 00:52:43 -0700 (PDT)
From: Dongdong Yang <contribute.kernel@gmail.com>
To: gregkh@linuxfoundation.org, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 mingo@redhat.com, peterz@infradead.org, juri.lelli@redhat.com,
 vincent.guittot@linaro.org, dietmar.eggemann@arm.com, rostedt@goodmis.org,
 bsegall@google.com, mgorman@suse.de
Subject: [PATCH v4] Provide USF for the portable equipment.
Date: Tue,  4 Aug 2020 15:50:34 +0800
Message-Id: <cover.1596526941.git.yangdongdong@xiaomi.com>
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
Cc: devel@driverdev.osuosl.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, yangdongdong@xiaomi.com, yanziily@xiaomi.com,
 rocking@linux.alibaba.com
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
ZQpjcHVmcmVxIGluIHRpbWUuCgpDaGFuZ2VzIGluIHY0CkJhc2VkIG9uIGNvbW1lbnRzIGZyb20g
R3JlZywgUmFuZHkgYW5kIFZpcmVzaAogIC0gQWRkIFVTRiBzeXNmcyB0byBBQkkKICAtIFJlbW92
ZSBrb2JqIGZpZWxkIGZyb20gdXNmLgogIC0gQ2xlYW4gS2NvbmZpZyBsZWZ0IGF0IHN0YWdpbmcu
CgpDaGFuZ2VzIGluIHYzCkJhc2VkIG9uIGNvbW1lbnRzIGZyb20gR3JlZywgRGlldG1hciwgQ2hy
aXN0b3BoIGFuZCBSYW5keQogIC0gTW92ZSB1c2YuYyB0byBrZXJuZWwvc2NoZWQgZnJvbSBzdGFn
aW5nLgogIC0gUmVtb3ZlIHRyYWNlX3ByaW50ayBhbmQgZGVidWdmcy4KICAtIEFkZCBkb2N1bWVu
dCBkcmFmdC4KICAtIFVwZGF0ZSBjb21tZW50cy4KCkNoYW5nZXMgaW4gdjIKQmFzZWQgb24gY29t
bWVudHMgZnJvbSBTdGV2ZW4sIEdyZWcsIFBldGVyIGFuZCBEYW46CiAgLSBBZGQgYWRqdXN0X3Rh
c2tfcHJlZF9zZXQgc3dpdGNoLgogIC0gTW92ZSBhZGp1c3RfdGFza19wcmVkX2RlbWFuZCBkZWNs
YXJhdGlvbiBpbnRvIHNjaGVkLmgKICAtIFVwZGF0ZSBjb21tZW50cy4KICAtIENsZWFuIHVzZiBz
dHJ1Y3R1cmUuCgpDaGFuZ2VzIGluIHYxCkluaXRpYWwgVVNGIAoKRG9uZ2RvbmcgWWFuZyAoMSk6
CiAgc2NoZWQ6IFByb3ZpZGUgVVNGIGZvciB0aGUgcG9ydGFibGUgZXF1aXBtZW50LgoKIERvY3Vt
ZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtZGV2aWNlcy1zeXN0ZW0tY3B1IHwgIDQ4ICsrKysK
IGRyaXZlcnMvY3B1ZnJlcS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEx
ICsKIGluY2x1ZGUvdHJhY2UvZXZlbnRzL3NjaGVkLmggICAgICAgICAgICAgICAgICAgICAgIHwg
IDM1ICsrKwoga2VybmVsL3NjaGVkL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDEgKwoga2VybmVsL3NjaGVkL2NwdWZyZXFfc2NoZWR1dGlsLmMgICAgICAgICAgICAg
ICAgICAgfCAgIDMgKwoga2VybmVsL3NjaGVkL3NjaGVkLmggICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgMTAgKwoga2VybmVsL3NjaGVkL3VzZi5jICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAyOTQgKysrKysrKysrKysrKysrKysrKysrCiA3IGZpbGVzIGNoYW5nZWQs
IDQwMiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL3NjaGVkL3VzZi5j
CgotLSAKMi43LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
