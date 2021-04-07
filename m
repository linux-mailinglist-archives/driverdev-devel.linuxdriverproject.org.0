Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 984DF357803
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Apr 2021 00:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AAFE41927;
	Wed,  7 Apr 2021 22:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dxd18QfOZKNw; Wed,  7 Apr 2021 22:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C865D4192E;
	Wed,  7 Apr 2021 22:54:45 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C7B81BF48D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 22:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 093D84068D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 22:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g-zoH-BgDvic
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 22:54:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64200400BD
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 22:54:35 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id i3so184071oik.7
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 07 Apr 2021 15:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=RQgVC+ltN8D/EW+qvOnxBd3BkC8aGKQOGFo20+oSs0k=;
 b=euOLmkO4NfoSA/5yViV3cV2Em/emOCk2zH/FhuQKVSRSVykn2f2gm6Aqb/nsFEm5dC
 bKs+uQct0iiGzvX3DrQZyUIG0Ayidbi/Tj/M/5ZQB8lmhRIP1/eHPpANlj4s5CA8iX7z
 8+5PEB10E2W36FhOORj+FO6WDJsBL6K5f2najMgKZPmRbL1j96Pz8p2eEAEozdIAE3ik
 7GEwcU69D++VQ1Fohj7v4f+pZ/XPza7KIecESzgt7tW4tergHMeOZwpxkC/wZp/2SWKe
 vlp0A72DjK4RfbJSlcj/M2fhl0b0VsFO7ZSHiH8yTTfvhBcjFX8iFQo6z/Yu48kQbm5n
 Bb+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=RQgVC+ltN8D/EW+qvOnxBd3BkC8aGKQOGFo20+oSs0k=;
 b=N+R0GdkR3pYDU/JR5Nlq5peJUmtX0ou0/TXNzjmHipu7a28vT/T6Ng7yNjeKYjEkWP
 KyHA4rRCzeCD8QNWL4hdJ0m3ajJeN1u28f80ngKYL8b2J0QK22Ty3hYibgyPnqk1F3Qz
 bn8Oz4ADPt4zWHD3943gqbbxKQh3Evgqp6Yat/Pc7Z2lG2AH+zaWAZFhFPOSJd+Bb2CP
 TCbm6WqABi45+qIOM6ULB6s91uYUxchmYo1NBep9nuQu8ehJh9vsD4tirVdVGD8DZSue
 Vva0Y/+IGJiVLma73dPH5Ake8OXMY/88tDELgN0+Sh7akN7pRnCBe2/fTPoSN3XU+/hk
 SChw==
X-Gm-Message-State: AOAM5333kkyObUiFsU0rucRHU/VzqIvoKzX16Oxwoa0kDU5zJn4MU7I3
 +sMAcZvtlJRnG/JSTfcRXO2Ybqy3gCYee7Nusv4=
X-Google-Smtp-Source: ABdhPJxeb9VAV001NwRyjvzoQxOkGyQuhDAP1GtKhiTTzD7sn088Unhu4+7OWyd/3YI1+/LvLM58UIXg+CVdR0SdjqQ=
X-Received: by 2002:aca:1c0c:: with SMTP id c12mr3932999oic.80.1617836074490; 
 Wed, 07 Apr 2021 15:54:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7401:0:0:0:0:0 with HTTP;
 Wed, 7 Apr 2021 15:54:34 -0700 (PDT)
From: "Ms. Milla Smith" <millasth804@gmail.com>
Date: Wed, 7 Apr 2021 15:54:34 -0700
X-Google-Sender-Auth: 8mOcgRsk47wrCsWZ1H_tGU3DipA
Message-ID: <CAG2VM7ieQbyBd0M0OOpRP5RX1YxtzHuxK6wZxOOLo3zacBpDsg@mail.gmail.com>
Subject: compensation
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
Reply-To: millasmith7010@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQsCgpJIGFtIHNvcnJ5LCBidXQgaGFwcHkgdG8gaW5mb3JtIHlvdSBhYm91dCBt
eSBzdWNjZXNzIGluIGdldHRpbmcgdGhvc2UKZnVuZHMgdHJhbnNmZXJyZWQgdW5kZXIgdGhlIGNv
b3BlcmF0aW9uIG9mIGEgbmV3IHBhcnRuZXIgZnJvbSBWaWV0bmFtLgpUaG91Z2gsIEkgSSB0cmll
ZCBteSBiZXN0IHRvIGludm9sdmUgeW91IGluIHRoZSBidXNpbmVzcywgYnV0CmV2ZXJ5dGhpbmcg
Y2hhbmdlZCBjb21wbGV0ZWx5LiBQcmVzZW50bHksIEkgYW0gaW4gVmlldG5hbSBmb3IKaW52ZXN0
bWVudCBwcm9qZWN0cyB3aXRoIG15IG93biBzaGFyZSBvZiB0aGUgdG90YWwgc3VtLiBNZWFud2hp
bGUsIEkKZGlkbid0IGZvcmdldCB5b3VyIHBhc3QgZWZmb3J0cyBhbmQgYXR0ZW1wdHMgdG8gYXNz
aXN0IG1lIGluCnRyYW5zZmVycmluZyB0aG9zZSBmdW5kcyBkZXNwaXRlIHRoYXQgaXQgZmFpbGVk
IHVzIHNvbWVob3cuCgpOb3cgY29udGFjdCBteSBzZWNyZXRhcnkgaW4gQnVya2luYSBGYXNvLiBI
ZXIgbmFtZSBpcyBNcy4gTWlsbGEgU21pdGguCkhlciBlbWFpbCBhZGRyZXNzIGlzICBtaWxsYXNt
aXRoNzAxMEBnbWFpbC5jb20KCkFzayBoZXIgdG8gc2VuZCB5b3UgdGhlIHRvdGFsIHN1bSBvZiAk
NDUwLDAwMC4wMCB3aGljaCBJIGtlcHQgZm9yIHlvdXIKY29tcGVuc2F0aW9uIG92ZXIgdGhlIHBh
c3QgZWZmb3J0cyBhbmQgYXR0ZW1wdHMgdG8gYXNzaXN0IG1lIGluIHRoaXMKbWF0dGVyLiBJIGFw
cHJlY2lhdGVkIHlvdXIgZWZmb3J0cyBhdCB0aGF0IHRpbWUgdmVyeSBtdWNoLiBTbyBmZWVsCmZy
ZWUgYW5kIGNvbnRhY3QgbXkgc2VjcmV0YXJ5IE1zLiBNaWxsYSBTbWl0aCBhbmQgaW5zdHJ1Y3Qg
aGVyIHdoZXJlCnRvIHNlbmQgdGhlIGFtb3VudCB0byB5b3UuIFBsZWFzZSwgZG8gbGV0IG1lIGtu
b3cgaW1tZWRpYXRlbHkgeW91CnJlY2VpdmUgaXQgc28gdGhhdCB3ZWNhbiBzaGFyZSBqb3kgYWZ0
ZXIgYWxsIHRoZSBzdWZmZXJpbmdzIGF0IHRoYXQKdGltZS4KCkF0IHRoZSBtb21lbnQsIEnigJlt
IHZlcnkgYnVzeSBoZXJlLiBCZWNhdXNlIG9mIHRoZSBpbnZlc3RtZW50IHByb2plY3RzCndoaWNo
IEkgYW5kIG15IG5ldyBwYXJ0bmVyIGFyZSBoYXZpbmcgYXQgaGFuZC4gRmluYWxseSwgcmVtZW1i
ZXIgdGhhdApJIGhhZCBmb3J3YXJkZWQgaW5zdHJ1Y3Rpb25zIHRvIHRoZSBzZWNyZXRhcnkgb24g
eW91ciBiZWhhbGYgdG8KcmVjZWl2ZSB0aGF0IG1vbmV5LiBTbywgZmVlbCBmcmVlIGFuZCBnZXQg
aW4gdG91Y2ggd2l0aCBNcy4gTWlsbGEKU21pdGguCgpFeHRlbmQgbXkgZ3JlZXRpbmdzIHRvIHlv
dXIgZmFtaWx5LgoKCkJlc3QgcmVnYXJkcywKCllvdXJzIGJyb3RoZXIKTXIuIEFidSBTYWxhbQpH
cmVldGluZ3MgZnJvbSBWaWV0bmFtCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
