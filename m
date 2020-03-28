Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 614DE19645E
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 09:12:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C8B922618;
	Sat, 28 Mar 2020 08:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K5Caq1j2+CO4; Sat, 28 Mar 2020 08:12:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F114F21080;
	Sat, 28 Mar 2020 08:12:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 942A81BF5A2
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 08:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89E54889D5
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 08:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fudHr7FxemMl for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 08:12:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 818BB889D4
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 08:12:17 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id h9so14470203wrc.8
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 01:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=2c3NHrC66jWi3m18rkAvFw718kZkFddBb/v8K0cmqZw=;
 b=TUUr90nInqXTpaOg7DYQiT7IBoEfX4Fbwkdv/IA4nBVVlKWur9Ee/u/jejoHuUGSp1
 BetXzbtKZZAwG3Bfc5Zr3pLJsD4+JSVhm2kj8BJFNV7ztndUxDrg9Ed/czgsqoUfxL2G
 Tqz6xchMapx6ar6bEqYjrKCwOQDXBilnzBvps8DCLrg1Vm+Pls324FM9aTkh09imkeM8
 S+FyE+vn9iOzRzL6LEOZp7Ypzuw1HMn+sk1IHOhHAZnoAhN71zhV3w5xctr9FG4hqPTJ
 fuRqtyTYw8BVUYbOdf23/Os1GnG5iAuWD+VLH1Lr2Eh8ION2vQ14r+5n0Ad+sWJSxbNN
 PfXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=2c3NHrC66jWi3m18rkAvFw718kZkFddBb/v8K0cmqZw=;
 b=enbcl8mnIC/2m/Gl3sJPIu3/t+TipRz9k0qxBxqHxikzd1n81mZa+SZbF2ulsiWklV
 oe4MbVqqT+G0LIgj+TWNDe43Jmp2A63EUmNacfWnv7BecfooT40ztp6aM47ITVX954mJ
 su72iY0HVTT8yDoEU41G98EVJj2Mj2S1SafLzgPiyFHSRjeuNT4nhxFzARQcQZOZeHL8
 y90J+/t42aZPfLk3+XJk3caB7aWrFH/1lw4tUpDRgcc/ttYZfU6Tovf4tOqSnrSn+zQ+
 VXEmPIagu9KkXFULg4IGu0hMlcXCLFhSfX65aPNTSGMJZSYvrCPkw++XxRtZ3+/yMWGM
 BtIQ==
X-Gm-Message-State: ANhLgQ1CDQm/uJ9RZgDsRFB3c3gxjZL5foS9fyT/Wwf80deFuRsJn2Bd
 5eFghfs2N5fzI0swz/QaCqXGcG7DQXwxco2qvu8=
X-Google-Smtp-Source: ADFU+vtH7KOZ2qkIWnqoVxV2LbqlfU3YRd4S2isN4PvK2S8m+RNZiGKZJ1lyWac01SQ+J7qdWVGQhp37Z7pAhFy0Oa8=
X-Received: by 2002:adf:e44a:: with SMTP id t10mr3682163wrm.322.1585383135665; 
 Sat, 28 Mar 2020 01:12:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:99c4:0:0:0:0:0 with HTTP; Sat, 28 Mar 2020 01:12:14
 -0700 (PDT)
From: "Mrs. Iris Stobbs" <anthonylewinsky65@gmail.com>
Date: Sat, 28 Mar 2020 09:12:14 +0100
Message-ID: <CAGKfeZ7rY6XQTY1KVUXq43qmn2F5n0qNFbNRmv2xiYcg-cGfSA@mail.gmail.com>
Subject: Dearly Beloved.
To: undisclosed-recipients:;
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
Reply-To: mrs.irisstobbs0@yandex.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhcmx5IEJlbG92ZWQsCgpHcmVldGluZyB0byB5b3UuIGZpcnN0bHksIEkgZ290IHlvdXIgZW1h
aWwgYWRkcmVzcyBmcm9tIGEgbWFpbApkaXJlY3RvcnkgYW5kIGRlY2lkZWQgdG8gbWFpbCB5b3Ug
Zm9yIGEgcGVybWlzc2lvbiB0byBnbyBhaGVhZC4KCkkgYW0gTXJzLiBJcmlzIEouIFN0b2JicyBm
cm9tIFNhbyBUb21lIGFuZCBQcmluY2lwZSwgSSB3YXMgbWFycmllZCB0bwpsYXRlIE1yLiBQYXRy
aWNrIFN0b2JicyB0aGUgQ0VPIG9mIFBBVENBVCBPaWwgTWluaW5nICYgRXhwbG9yYXRpb24sIEkK
YW0gNTggeWVhcnMgb2xkLCBJIGFtIHN1ZmZlcmluZyBmcm9tIGEgbG9uZyB0aW1lIGNhbmNlciBv
ZiB0aGUgYnJlYXN0CndoaWNoIGhhcyBhZmZlY3RlZCBteSB0YWxraW5nICYgaGVhcmluZyBsYXRl
bHkuIFRoZSBjYW5jZXIgaGFzIHJlYWNoZWQKYSBjcml0aWNhbCBzdGFnZSwgc28gbXkgZG9jdG9y
cyBoYXZlIGNvdXJhZ2VvdXNseSBhZHZpc2VkIG1lIHRvCmluZHVsZ2UgaW4gUHJheWVycyBhcyB3
ZWxsIGJlY2F1c2UgaXQgaXMgY2xlYXIgdGhhdCBJIHdvdWxkIG5vdCBsaXZlCnBhc3QgdGhlIG5l
eHQgdHdvIHRvIHRocmVlIG1vbnRocy4KCkkgd2FzIHJhaXNlZCBpbiBhbiBvcnBoYW5hZ2UgSG9t
ZSwgYW5kIHdhcyBtYXJyaWVkIHRvIG15IGxhdGUgaHVzYmFuZApmb3IgdHdlbnR5IHllYXJzIHdp
dGhvdXQgYSBjaGlsZC4gTXkgaHVzYmFuZCBhbmQgSSBhcmUgdHJ1ZSBDaHJpc3RpYW5zCnNvIGFm
dGVyIGhpcyBkZWF0aCBJIGRlY2lkZWQgbm90IHRvIHJlLW1hcnJ5LCBoZSBkaWVkIGluIGEgZmF0
YWwgbW90b3IKYWNjaWRlbnQgd2hpY2ggSSBrbm93IGlzIHBvbGl0aWNhbCBtb3RpdmF0ZWQgYmVj
YXVzZSBvZiBoaXMgdmVudHVyZSBpbgp0aGUgbmV3IG9pbCBpbmR1c3RyeS4KCkkgc29sZCBhbGwg
bXkgaW5oZXJpdGVkIGJlbG9uZ2luZ3MgYW5kIGRlcG9zaXRlZCBhbGwgdGhlIHN1bSBvZgpVUyQx
MCwzMDAsMDAwLjAwIHdpdGggYSBCYW5rLiBQcmVzZW50bHksIHRoZSBtb25leSBpcyBzdGlsbCB3
aXRoIHRoZQpiYW5rLCBhbmQgSSByZWNlaXZlZCBhIGxldHRlciBmcm9tIHRoZSBtYW5hZ2VtZW50
IG9mIHRoZSBob2xkaW5nIGJhbmsKYXMgdGhlIHJlYWwgZGVwb3NpdG9yIHVyZ2luZyBtZSB0byBj
b21lIGZvcndhcmQgdG8gcmVjZWl2ZSB0aGUgbW9uZXkKYWZ0ZXIga2VlcGluZyBpdCBmb3Igc3Vj
aCBhIGxvbmcgb3IgcmF0aGVyIGlzc3VlIGEgbGV0dGVyIG9mIGFwcHJvdmFsCm9yIHBvd2VyIG9m
IGF0dG9ybmV5IHRvIHNvbWVib2R5IHRvIHJlY2VpdmUgaXQgb24gbXkgYmVoYWxmIG9yIHRoZQpt
YW5hZ2VtZW50IHdpbGwgY29uZmlzY2F0ZSB0aGUgZnVuZHMuCgpGcmFua2x5LCBJIGNhbiBub3Qg
Y29tZSBvdmVyIGFzIGEgcmVzdWx0IG9mIG15IGlsbG5lc3M7IEknbSB3aXRoIG15CmxhcHRvcCBp
biBhIGhvc3BpdGFsIHdoZXJlIEkgaGF2ZSBiZWVuIHVuZGVyZ29pbmcgdHJlYXRtZW50LiBJIGhh
dmUKc2luY2UgbG9zdCBteSBhYmlsaXR5IHRvIHRhbGsgYW5kIG15IGRvY3RvcnMgaGF2ZSB0b2xk
IG1lIHRoYXQgSSBoYXZlCm9ubHkgYSBmZXcgbW9udGhzIHRvIGxpdmUuCgpJdCBpcyBteSBsYXN0
IHdpc2ggdG8gc2VlIHRoYXQgdGhpcyBtb25leSBpcyBpbnZlc3RlZCBpbiBhbnkKQ2hhcml0YWJs
ZSBPcmdhbml6YXRpb24gb2YgeW91ciBjaG9pY2UgYW5kIGRpc3RyaWJ1dGVkIGVhY2ggeWVhciBh
bW9uZwp0aGUgQ2hhcml0eSBvcmdhbml6YXRpb25zIGFuZCBPcnBoYW5hZ2VzLCBzbyBJIHdhbnQg
YSBnb29kCmh1bWFuaXRhcmlhbiB0byB1c2UgdGhpcyBtb25leSB0byBmdW5kIENodXJjaGVzLCBO
ZWVkeSBhbmQgV2lkb3dzIGluClPDo28gVG9tw6kgYW5kIFByaW5jaXBlIG9yIGluIHlvdXIgQ291
bnRyeSBidXQgcHJlZmVyYWJseSBpbiBTw6NvIFRvbcOpCmFuZCBQcmluY2lwZS4gSSBtdXN0IGxl
dCB5b3Uga25vdyB0aGF0IHRoaXMgd2FzIGEgdmVyeSBoYXJkIGRlY2lzaW9uLApidXQgSSBoYWQg
dG8gdGFrZSBhIGJvbGQgc3RlcCB0b3dhcmRzIHRoaXMgaXNzdWUsIGFuZCBJIGhvcGUgeW91IHdp
bGwKaGVscCBzZWUgbXkgbGFzdCB3aXNoZXMgY29tZSB0cnVlLgoKQXMgc29vbiBhcyBJIHJlY2Vp
dmUgeW91ciByZXBseSBJIHNoYWxsIHVzZSB0aGUgbGl0dGxlIG1vbmV5IEkgaGF2ZQpmb3IgbXkg
ZHJ1Z3MgYW5kIE1lZGktY2FyZSB0byBwcm9jdXJlIGFuZCBpc3N1ZSB5b3UgYSBsZXR0ZXIgb2YK
YXV0aG9yaXR5IHdoaWNoIHdpbGwgcHJvdmUgdGhhdCB5b3UgYXJlIHRoZSBuZXcgYmVuZWZpY2lh
cnkgb2YgbXkKZnVuZHMgYW5kIEkgc2hhbGwgcmVsZWFzZSB0aGUgY29udGFjdCBvZiB0aGUgQmFu
ayB0byB5b3UuCgpQbGVhc2UgYXNzdXJlIG1lIHRoYXQgeW91IHdpbGwgYWN0IGFjY29yZGluZ2x5
IGFzIEkgc3RhdGVkIGhlcmVpbi4gSQpob3BlIHRvIGhlYXIgZnJvbSB5b3Ugc29vbmVzdCBpZiB5
b3UgYXJlIHdpbGxpbmcgdG8gaGFuZGxlIHRoaXMKcHJvamVjdCBBd2FpdGluZyB5b3VyIHVyZ2Vu
dCByZXBseSBhcyBzb29uIGFzIHBvc3NpYmxlIHRvIG15IHByaXZhdGUKRW1haWwgKCBtcnNpcmlz
c3RvYmJzMEBtYWlsLmJnICkKCllvdXJzIGluIENocmlzdCwKCk1ycy4gSXJpcyBTdG9iYnMuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
