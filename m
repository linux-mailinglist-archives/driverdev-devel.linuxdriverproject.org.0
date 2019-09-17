Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9F7B46DD
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 07:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8518D84FD5;
	Tue, 17 Sep 2019 05:31:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8QB4MdMQYiX2; Tue, 17 Sep 2019 05:31:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8045585B9A;
	Tue, 17 Sep 2019 05:31:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DAD131BF313
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 05:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D128820490
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 05:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XyhOMwY2Q3Yf for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 05:31:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B4F732000B
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 05:31:40 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q5so1412150pfg.13
 for <devel@driverdev.osuosl.org>; Mon, 16 Sep 2019 22:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EQ0acRLPRiNkuyWsFFHOV/6xwzk+wEWY0J/gcpntvHs=;
 b=TeorArZ8kq/CR+J83TcgIcoMMXb0AYK6talNwdUHRJVyf9VikpQmWsGf7w3UTHfQny
 pDINeP/EhlRnYY9sMv2fum/y2ArzqdmeDG6hxpTklbaUPRN7YV9s+U7mOiT0H/fgCQDm
 KIxM9/+sDhNZpzPWn/c7afHOZPoV/5MgIDG31sTYYhJmzI7Ej8GSRGomCI5/6RQ9WiLr
 Nvki95KG/xig1NrsLMbSId2FLFpvMbvTlBNBD0ED8BG2PooD4xBLZK9Rg5ULlGRAP60L
 zaD45mDMcL2jwgoEcrUVWYTZN+cQdMEJJTuMS/Vxl5SJayjoOQjwbgRoHqPhCPuFKmUG
 psIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EQ0acRLPRiNkuyWsFFHOV/6xwzk+wEWY0J/gcpntvHs=;
 b=sIVRsFbg0Eopm/PaTEkPLU2EH6RkX+n6f5sZQBhgKbtHyU1RI8n4DXZqmvjTx9ndhE
 0EeU0jCrVDDhHvgQe2YZrz5d3Mk/4q/MkHG//ocvRKemxrXIBJ3SWehHVZL1SFdFXLAx
 c0a3uv94Mbjx4C8d8GPcMUwY3wNVifJiUopv3CO6FH8UnbFFIuDx1LYom/0X6JcasPg1
 wj7yxJXZ6ljCocUVj7UE9j/+4j0/HHuQ6vO4JqmeB/VeAn/Qb8hOGVKetLxSgZV6T9CD
 p8ee3R7yKn5tG5/ZjJ3G4ElBoRAP3VOVD+JcePPfbG8kUtsioFJZdxYr1wbcQrDrkjHG
 /zug==
X-Gm-Message-State: APjAAAXZCQBzqmW+S/HRfRDXh51TcHpt99SLLF7lao1q+mH5Trjg2EGU
 QYxaqX/m3xzpkoIooMNHsm4=
X-Google-Smtp-Source: APXvYqxR+x7zzJVajUqecslzP05unUQObpLjtCGBNhxJZNrfm+ZY01XHEVbEv4NirSM8n8X1LdMWug==
X-Received: by 2002:aa7:8f08:: with SMTP id x8mr2368896pfr.48.1568698300250;
 Mon, 16 Sep 2019 22:31:40 -0700 (PDT)
Received: from arter97-x1.inha.ac.kr ([165.246.242.140])
 by smtp.gmail.com with ESMTPSA id h2sm964076pfq.108.2019.09.16.22.31.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 22:31:39 -0700 (PDT)
From: Park Ju Hyung <qkrwngud825@gmail.com>
To: valdis.kletnieks@vt.edu, gregkh@linuxfoundation.org,
 namjae.jeon@samsung.com
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
Date: Tue, 17 Sep 2019 14:31:34 +0900
Message-Id: <20190917053134.27926-1-qkrwngud825@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <8998.1568693976@turing-police>
References: <8998.1568693976@turing-police>
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 sergey.senozhatsky@gmail.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCAxNyBTZXAgMjAxOSAwMDoxOTozNiAtMDQwMCwgIlZhbGRpcyBLbMSTdG5pZWtzIiBz
YWlkOgo+IEknbSB3b3JraW5nIG9mZiBhIHNvbWV3aGF0IGNsZWFuZWQgdXAgY29weSBvZiBTYW1z
dW5nJ3Mgb3JpZ2luYWwgZHJpdmVyLAo+IGJlY2F1c2UgdGhhdCdzIHdoYXQgSSBoYWQga25vd2xl
ZGdlIG9mLiAgSWYgdGhlIHNkZmF0IGRyaXZlciBpcyBjbG9zZXIgdG8gYmVpbmcKPiBtZXJnZWFi
bGUsIEknZCBub3Qgb2JqZWN0IGlmIHRoYXQgZ290IG1lcmdlZCBpbnN0ZWFkLgoKR3JlZywgYXMg
VmFsZGlzIG1lbnRpb25lZCBoZXJlLCB0aGUgc3RhZ2luZyB0cmVlIGRyaXZlciBpcyBqdXN0IGFu
b3RoZXIgZXhGQVQgZm9yawpmcm9tIFNhbXN1bmcuCldoYXQncyB0aGUgcG9pbnQgb2YgdXNpbmcg
YSBtdWNoIG9sZGVyIGRyaXZlcj8KCnNkRkFUIGlzIGNsZWFybHkgbW9yZSBtYXR1cmVkIGFuZCBi
ZWVuIHB1dCBpbnRvIG1vcmUgcmVjZW50IHByb2R1Y3Rpb24gc29mdHdhcmVzLgpBbmQgYXMgSSB3
cm90ZSBpbiBwcmV2aW91cyBlbWFpbCwgaXQgZG9lcyBpbmNsdWRlIHNvbWUgcmVhbCBmaXhlcy4K
CkFzIE5hbWphZSBzYWlkIHRvbywgU2Ftc3VuZyB3b3VsZCBiZSBtb3JlIGludGVyZXN0ZWQgaW4g
bWVyZ2luZyBzZEZBVCB0byB1cHN0cmVhbS4KSWYgd2UgZGl2ZXJnZSwgU2Ftc3VuZyB3aWxsIGhh
dmUgbGVzcyByZWFzb25zIHRvIGNvbnRyaWJ1dGUgdGhlaXIgcGF0Y2hlcyB0byB1cHN0cmVhbS4K
CkFsc28sIEkgdGhpbmsgaXQgbWFrZXMgbXVjaCBtb3JlIHNlbnNlIHRvIG1ha2UgU2Ftc3VuZyB0
aGUgbWFpbnRhaW5lciBvZiB0aGlzIGRyaXZlcgooaWYgdGhleSdyZSB3aWxsaW5nIHRvIHB1dCBp
biB0aGUgbWFucG93ZXIgdG8gZG8gc28pLiBBc2tpbmcgdGhlbSB3b3VsZCBiZSB0aGUgZmlyc3QK
c3RlcCBpbiBkb2luZyBzby4KCj4gQnV0IGhlcmUncyB0aGUgcHJvYmxlbS4uLiBTYW1zdW5nIGhh
cyB0aGVpciBpbnRlcm5hbCBzZGZhdCBjb2RlLCBQYXJrIFl1IEh5dW5nCj4gaGFzIHdoYXQgYXBw
ZWFycyB0byBiZSBhIGZvcmsgb2YgdGhhdCBjb2RlIGZyb20gc29tZSBwb2ludCAoYW5kIGl0J3Mg
dW5jbGVhciAsCj4gYW5kIGl0J3MgdW5jbGVhciB3aGljaCBvbmUgaGFzIGhhZCBtb3JlIGJ1Z2Zp
eGVzIGFuZCBjbGVhbnVwcyB0byBnZXQgaXQgdG8KPiBzb21ld2hlcmUgbmVhciBtYWlubGluZSBt
ZXJnZWFibGUuCgpJIG1hZGUgaXQgZXh0cmVtZWx5IGNsZWFyIG9uIHdoZXJlIEkgdG9vayB0aGUg
Y29kZS4KClRoZSBpbml0aWFsIGNvbW1pdDogInNkZmF0OiBpbXBvcnQgZnJvbSBHOTczRlhYVTNB
U0c4IiBzdGF0ZXMgd2hpY2gga2VybmVsIHNvdXJjZQpJIHVzZWQuCgpZb3UgY2FuIHNpbXBseSBz
ZWFyY2ggIkc5NzNGWFhVM0FTRzgiIG9uIGh0dHA6Ly9vcGVuc291cmNlLnNhbXN1bmcuY29tIGFu
ZCBkb3dubG9hZAp0aGUgc291cmNlIGNvZGUuIEl0J2xsIG1hdGNoIGV4YWN0bHkgd2l0aCBteSBp
bml0aWFsIGNvbW1pdC4KCk15IHJlcG9zaXRvcnkgaXMgYmFzaWNhbGx5IHJlbmFtZSArIGNsZWFu
LXVwICsgb2xkZXIga2VybmVsIGNvbXBhdC4KCkkgdGhpbmsgd2UgY2FuIGFsbCBhZ3JlZSB0aGF0
IHVzaW5nIHRoZSBzZEZBVCBuYW1pbmcgb24gbm9uLUFuZHJvaWQgaXMgdmVyeQptaXNsZWFkaW5n
LCB3aGljaCBpcyB3aHkgSSByZW5hbWVkIGl0IHRvIGV4RkFULgoKc2RGQVQgaW5jbHVkZXMgc3Vw
cG9ydCBmb3IgZmF0MTYvMzIsIGFuZCBhcyBhbHNvIG1lbnRpb25lZCBpbgpodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9ncmVna2gvc3RhZ2luZy5naXQvY29t
bWl0Lz9oPXN0YWdpbmctbmV4dCZpZD01ODk4NWE5ZDJkMDNlOTc3ZGI5M2JmNTc0YTE2MTYyNzY2
YTMxOGZlCnRoaXMgaXNuJ3QgZGVzaXJhYmxlLCBlc3BlY2lhbGx5IGluIG1haW5saW5lLgpJIGNs
ZWFuZWQgaXQgdXAgYW5kIHJlbW92ZWQgc29tZSBvdGhlciBTYW1zdW5nJ3MgY29kZSB0aGF0IHJl
bGllcyBvbiBwcm9wcmlldGFyeQp1c2Vyc3BhY2UgdG9vbHMgc3VjaCBhcyBkZWZyYWcuCgpJIGJl
bGlldmUgbXkgcmVwb3NpdG9yeSBpcyBpbiB0aGUgY2xlYW5lc3Qgc3RhdGUgZm9yIGdldHRpbmcg
bWVyZ2VkIHRvIG1haW5saW5lLApjb21wYXJlZCB0byBvdGhlciBkcml2ZXJzIGF2aWxhYmxlIG91
dCB0aGVyZS4KCklmIHdlIGhhcHBlbiB0byBwaWNrIGl0IHRvIG1haW5saW5lLCBJIHRoaW5rIGl0
J2xsIGFsc28gYmUgcXVpdGUgdHJpdmlhbCBmb3IgU2Ftc3VuZwp0byBwaWNrIG1haW5saW5lIHBh
dGNoZXMgYmFjayB0byB0aGVpciBzZEZBVCBkcml2ZXJzIHVzZWQgaW4gR2FsYXh5IGRldmljZXMu
Cgo+IENhbiB5b3UgcHJvdmlkZSBhIHBvaW50ZXIgdG8gd2hhdCBTYW1zdW5nIGlzICpjdXJyZW50
bHkqIHVzaW5nPyBXZSBwcm9iYWJseQo+IG5lZWQgdG8gc3RvcCBhbmQgYWN0dWFsbHkgbG9vayBh
dCB0aGUgY29kZSBiYXNlcyBhbmQgc2VlIHdoYXQncyBpbiB0aGUgYmVzdAo+IHNoYXBlIGN1cnJl
bnRseS4KCk5hbWphZSBjb3VsZCBwcm9iYWJseSBlbGFib3JhdGUgaGVyZSwgYnV0IGlmIEkgd2Vy
ZSB0byBndWVzcywgdGhlcmUgd2Fzbid0IGEKbm90aWNlYWJsZSBkaWZmZXJlbmNlIGluIHJlY2Vu
dCBzZEZBVCByZWxlYXNlcy4gRXZlbiB0aGUgbGFzdGVzdCBOb3RlMTAga2VybmVsIG9ubHkKaGFk
IHNvbWUgdWV2ZW50IGNoYW5nZXMuCgpJIHRoaW5rIHRoZSBjdXJyZW50IGxhdGVzdCBwdWJsaWMg
c291cmNlJ3MgZHJpdmVyIGlzIHRoZSBiZXN0IG9uZSBhdmFpbGFibGUuCgpUaGFua3MuCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
