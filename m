Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7719623C709
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 09:38:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6983184A6C;
	Wed,  5 Aug 2020 07:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BBDIRcn3R0Z1; Wed,  5 Aug 2020 07:38:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05A0E84B01;
	Wed,  5 Aug 2020 07:38:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 739DD1BF38B
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 07:38:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66A3E87E4D
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 07:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nSSFwHMD1A7 for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 07:38:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9F63087B40
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 07:38:33 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id u185so22203932pfu.1
 for <devel@driverdev.osuosl.org>; Wed, 05 Aug 2020 00:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zI12ASDPrZzCs4CeMeIEyoiyadcioD0vlIAhn4UgqXk=;
 b=O9VAtBoE8m9pLKolHVXq9C+h3xjFpigEO59KKEw4kmEIIcSOeMMg9v8JVb21AV4TR9
 LFL2IuqCTWdPZTdOuBK/Rieq9tgHVV/03i2xQT2jSeE8B6MpPHKNsBOg6765S1V1vzDf
 0OkmGmwP8qHF/I282tZV7T2tx9xfo4bXs2o8fpji6lgfL7JI+Zd/I4qXDYIitx5v2Ys8
 EriuWxoppqV7/cfAxFeKc7Rk2rw9Hsv+6o3e8A9sIVC3yQDuY1xdyKgBcmGC+gQW0zrv
 SdROIqYtEK0q6gCD2v4EIFKYqe5zPWgpvIxBVJcZd3SG+VTuOc4/i1fkSnldI1h+4aGB
 OGrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zI12ASDPrZzCs4CeMeIEyoiyadcioD0vlIAhn4UgqXk=;
 b=WDDWJ4knqks7cCAFvgD0O1Dsrr6GyU9tXsDd/cFYrlAMpublzdIoInIw8s23MwL2R/
 twsGQplrAXyA1eJ32VCdr2tWCCiPTHXC8xSo2+5132OLS7Z3pQawXC2IjSr1t7oe5m6N
 hFM+yJzvMWuAvbdLbJ+KyZd+Pykrl8pVMfcl+WScLSZ/shBXwGbNlDJ3HV6ymjs+LFcM
 ma0tq/9pl46WWkMYtINyKdfNz7IyQn+NeH3DaebUmf9g37+UWBqqqnvHkihrhTjPsZIV
 +zRZDKTu3LYYLE+H12ZhQibvc1Wk3L/KYx2fUHyb7AI7IkFjfmfmjhI+iKqrHuQ4DRdb
 uYFw==
X-Gm-Message-State: AOAM532TE+i4/RYVDDmIQRie8TozQCW6Xk51OUaaAJVpqHzpxy0OHZQd
 VzhE++0DWP9TD7cjFXnjBB8=
X-Google-Smtp-Source: ABdhPJw+QpPJNzZa5IUMV9Yu0eWvZwLDXap0j131WsCRjykSWzSD/1EzCKOVo8aXg2nYuvqEz3uSHw==
X-Received: by 2002:aa7:9703:: with SMTP id a3mr2086822pfg.268.1596613113224; 
 Wed, 05 Aug 2020 00:38:33 -0700 (PDT)
Received: from yangdongdo-OptiPlex-9010.mioffice.cn ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id r28sm1972871pfg.158.2020.08.05.00.38.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Aug 2020 00:38:32 -0700 (PDT)
From: Dongdong Yang <contribute.kernel@gmail.com>
To: gregkh@linuxfoundation.org, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 mingo@redhat.com, peterz@infradead.org, juri.lelli@redhat.com,
 vincent.guittot@linaro.org, dietmar.eggemann@arm.com, rostedt@goodmis.org,
 bsegall@google.com, mgorman@suse.de
Subject: [PATCH v5] Provide USF for the portable equipment.
Date: Wed,  5 Aug 2020 15:36:20 +0800
Message-Id: <cover.1596612536.git.yangdongdong@xiaomi.com>
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
c2V0dGluZyBmb3IKdXRpbCBhZGp1c3RtZW50IHB1cnBvc2UgZnJvbSB0aGUgaWRlbnRpZmllZCBz
Y2VuYXJpbyBvbiBwb3J0YWJsZQplcXVpcG1lbnQuIEJlY2F1c2UgdGhlIHBvd2VyIGNvbnN1bXB0
aW9uIGFuZCBVSSByZXNwb25zZSBhcmUgbW9yZSBjYXJlZApmb3IgYnkgcG9ydGFibGUgZXF1aXBt
ZW50wqB1c2Vycy4gQW5kIHRoZSAic2NyZWVuIG9mZiIgc3RhdHVzIHN0YW5kcyBmb3IKbm8gcmVx
dWVzdCBmcm9tIHRoZSB1c2VyLCBob3dldmVyLCB0aGUga2VybmVsIGlzIHN0aWxsIGV4cGVjdGVk
IHRvCm5vdGlmeSB0aGUgdXNlciBpbiB0aW1lIG9uIG1vZGVtLCBuZXR3b3JrIG9yIHBvd2Vya2V5
IGV2ZW50cyBvY2N1ci4gVVNGCnByb3ZpZGVzICJub25fdXhfciIgc3lzZnMgaW5vZGUgdG8gY3V0
IGRvd24gdGhlIHV0aWxzIGZyb20gdXNlciBzcGFjZQp0YXNrcyBhY2NvcmRpbmcgdG8gaGlnaCBs
ZXZlbCBzY2VuYXJpby4gSW4gYWRkaXRpb24sIGl0IHVzdWFsbHkgaGludHMKbW9yZSBjcHVmcmVx
IGRlbWFuZCB0aGF0IHRoZSBwcmVlbXB0aXZlIGNvdW50cyBvZiB0aGUgdGFza3Mgb24gdGhlIGNw
dQpidXJzdCBhbmQgb3ZlciB0aGUgdXNlciBleHBlY3RpbmcgY29tcGxldGVkIHRpbWUgc3VjaCBh
cyB0aGUgcmF0aW8Kc3lzY3RsX3NjaGVkX2xhdGVuY3kgdG8gc3lzY3RsX3NjaGVkX21pbl9ncmFu
dWxhcml0eSBvbiAic2NyZWVuIG9uIgpzdGF0dXMsIHdoaWNoIG1vcmUgbGlrZWx5IHdpdGggbW9y
ZSBVSS4gVGhlIHN5c2ZzIGlub2RlcyAidXBfbDBfciIgYW5kCiJkb3duX3IiIGhhdmUgYmVlbiBw
cm92aWRlZCB0byBhZGp1c3QgdGhlIHV0aWxzIGFjY29yZGluZyB0byBoaWdoIGxldmVsCmlkZW50
aWZpZWQgc2NlbmFyaW8gdG8gYWxsb2MgdGhlIGNwdWZyZXEgaW4gdGltZS4KCkNoYW5nZXMgaW4g
djUKQmFzZWQgb24gY29tbWVudHMgZnJvbSBHcmVnLCBQZXRlcnosIFFhaXMgYW5kIFJhbmR5CiAg
LSBVcGRhdGVkIFVTRiBzeXNmcyB0byBBQkkKICAtIFVwZGF0ZWQgdGhlIG5hbWVzIG9mIFVTRiBm
dW5jdGlvbnMuCiAgLSBDbGVhbiBzY2hlZC5oIGFuZCB0cmFjZS5oIGNoYW5nZXMuCgpDaGFuZ2Vz
IGluIHY0CkJhc2VkIG9uIGNvbW1lbnRzIGZyb20gR3JlZywgUmFuZHkgYW5kIFZpcmVzaAogIC0g
QWRkIFVTRiBzeXNmcyB0byBBQkkKICAtIFJlbW92ZSBrb2JqIGZpZWxkIGZyb20gdXNmLgogIC0g
Q2xlYW4gS2NvbmZpZyBsZWZ0IGF0IHN0YWdpbmcuCgpDaGFuZ2VzIGluIHYzCkJhc2VkIG9uIGNv
bW1lbnRzIGZyb20gR3JlZywgRGlldG1hciwgQ2hyaXN0b3BoIGFuZCBSYW5keQogIC0gTW92ZSB1
c2YuYyB0byBrZXJuZWwvc2NoZWQgZnJvbSBzdGFnaW5nLgogIC0gUmVtb3ZlIHRyYWNlX3ByaW50
ayBhbmQgZGVidWdmcy4KICAtIEFkZCBkb2N1bWVudCBkcmFmdC4KICAtIFVwZGF0ZSBjb21tZW50
cy4KCkNoYW5nZXMgaW4gdjIKQmFzZWQgb24gY29tbWVudHMgZnJvbSBTdGV2ZW4sIEdyZWcsIFBl
dGVyIGFuZCBEYW46CiAgLSBBZGQgYWRqdXN0X3Rhc2tfcHJlZF9zZXQgc3dpdGNoLgogIC0gTW92
ZSBhZGp1c3RfdGFza19wcmVkX2RlbWFuZCBkZWNsYXJhdGlvbiBpbnRvIHNjaGVkLmgKICAtIFVw
ZGF0ZSBjb21tZW50cy4KICAtIENsZWFuIHVzZiBzdHJ1Y3R1cmUuCgpDaGFuZ2VzIGluIHYxCklu
aXRpYWwgVVNGIAoKRG9uZ2RvbmcgWWFuZyAoMSk6CiAgc2NoZWQ6IFByb3ZpZGUgVVNGIGZvciB0
aGUgcG9ydGFibGUgZXF1aXBtZW50LgoKIERvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMt
ZGV2aWNlcy1zeXN0ZW0tY3B1IHwgIDMxICsrCiBkcml2ZXJzL2NwdWZyZXEvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAxMSArCiBrZXJuZWwvc2NoZWQvTWFrZWZpbGUgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBrZXJuZWwvc2NoZWQvY3B1ZnJlcV9z
Y2hlZHV0aWwuYyAgICAgICAgICAgICAgICAgICB8ICAgNSArCiBrZXJuZWwvc2NoZWQvdXNmLmMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDMxNCArKysrKysrKysrKysrKysrKysr
KysKIDUgZmlsZXMgY2hhbmdlZCwgMzYyIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBrZXJuZWwvc2NoZWQvdXNmLmMKCi0tIAoyLjcuNAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
