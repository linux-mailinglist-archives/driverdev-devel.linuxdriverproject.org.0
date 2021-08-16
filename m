Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FBC3ECF9F
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Aug 2021 09:44:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E921B40210;
	Mon, 16 Aug 2021 07:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PO8oBNEAo_I3; Mon, 16 Aug 2021 07:44:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69B3E4017B;
	Mon, 16 Aug 2021 07:44:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC0131BF316
 for <devel@linuxdriverproject.org>; Mon, 16 Aug 2021 07:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A93C8402F9
 for <devel@linuxdriverproject.org>; Mon, 16 Aug 2021 07:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tGRC72NgpCKb for <devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 07:43:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 608E1402F8
 for <devel@driverdev.osuosl.org>; Mon, 16 Aug 2021 07:43:55 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id q10so22209737wro.2
 for <devel@driverdev.osuosl.org>; Mon, 16 Aug 2021 00:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5JMhK9pOqseAjHRtHcU/HG4i5NuvupLcjaClPwT4ItM=;
 b=L7EDIlROEwC+2c/IsXnginaBC5yFzR8mdOZLVt6kLW9O8eCX0QHdIGAW/1u9JqMU3g
 1ksmfXfCL/u7CZyC1sBSKmrrYX/Ti9eKrZmoWQ21XTH3NBXuDWgqM69ASBnoU7MGUvyg
 CeJbaFVc3GZ733ysi9RrgZmpcHDfWMBncUXwVj+82ssXDubaaAl6ZSy/LLadvyAqeTze
 Ct/CvDiVUPGsvpnURIpLwwQn5rvu95A2sHJzB0mDmnVr1xMBc7357Y51tJA99uaR/6b5
 5WkKEJkD5jWdK0zc2EZkG+jJUxApKYubaBr2pykuiatU6SZVLpRP8nqQ9oBH9jTnBLLQ
 xZLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=5JMhK9pOqseAjHRtHcU/HG4i5NuvupLcjaClPwT4ItM=;
 b=IhE9kVZ+2x8kn3CGQbUG8XVsSsSQFPTMhXX7TII7zc1cuYrXHqKtQsL6LRHC+EdHar
 GYwzMCn2POhZ23dD36Z7SvOCbmZmH5tkByw7EBdZnIV/jQNd4Y5cp1poitBe2NND75ob
 Ma2wOmt562fRCwn51xRP40IEoAXfAIAiSdHaIZkXEqqXwhY22fSSEfypfEiKQXJIh1Jx
 NgOyVRAgsuO6VkdTC7wfSL2AC3Go2sFDpR5hvZpe23aKaBghEytDW6NzP8hmFg/Cw/+5
 3tVzRqy3Ik9xesoHHH7GvYR9Q+1jVY2FMwvRTDV8JOxDVFbmT1kQ+vSB6wuRZFeYMdu/
 6Xhg==
X-Gm-Message-State: AOAM530QxMYArmzYYaVKeCDomuO845YG/CrbvAA15m4XapZZ3Zn9c3ZL
 pJ4PKO7HLb4SE9qUwYh3Tnc8F8mrO00h7TQHFMc=
X-Google-Smtp-Source: ABdhPJzWfCLClyFqrCBXfvw44kbM4WkElJshlqKsrP5a7PScA/IwDEMpabdQkqPa/Kuelgz9va4OZEt/3H4u071YCDc=
X-Received: by 2002:a5d:6ccc:: with SMTP id c12mr9363303wrc.81.1629099833119; 
 Mon, 16 Aug 2021 00:43:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:fb82:0:0:0:0:0 with HTTP; Mon, 16 Aug 2021 00:43:52
 -0700 (PDT)
From: AISHA GADDAFI <smithanderson10101@gmail.com>
Date: Mon, 16 Aug 2021 00:43:52 -0700
Message-ID: <CAJnE440URrDx_FZfzgoHQ8_Ado=QLx3eeRz+ANhBf8m6J92bsQ@mail.gmail.com>
Subject: Liebster Freund,?
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
Reply-To: ayishagddafio@mail.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkxpZWJzdGVyIEZyZXVuZCwKCkltIE5hbWVuIEdvdHRlcywgZGVzIGduw6RkaWdzdGVuLCBi
YXJtaGVyemlnc3Rlbi4KCkZyaWVkZSBzZWkgbWl0IGRpciB1bmQgQmFybWhlcnppZ2tlaXQgc2Vp
IG1pdCBkaXIgdW5kIFNlZ2VuIHNlaSBtaXQgZGlyLgpJY2ggaGFiZSBkaWUgU3VtbWUgdm9uIDI3
LDUgTWlsbGlvbmVuIFVTRCBmw7xyIEludmVzdGl0aW9uZW4sIGljaAppbnRlcmVzc2llcmUgbWlj
aCBmw7xyIFNpZSBmw7xyIGRpZSBVbnRlcnN0w7x0enVuZyB2b24KSW52ZXN0aXRpb25zcHJvamVr
dGVuIGluIElocmVtIExhbmQuIE1laW4gTmFtZSBpc3QgQWlzaGEgR2FkZGFmaSB1bmQKbGViZSBk
ZXJ6ZWl0IGltIE9tYW4sIGljaCBiaW4gZWluZSBXaXR3ZSB1bmQgYWxsZWluZXJ6aWVoZW5kZSBN
dXR0ZXIKbWl0IGRyZWkgS2luZGVybiwgZGllIGVpbnppZ2UgbGVpYmxpY2hlIFRvY2h0ZXIgZGVz
IHZlcnN0b3JiZW5lbgpsaWJ5c2NoZW4gUHLDpHNpZGVudGVuIChkZW0gdmVyc3RvcmJlbmVuIE9i
ZXJzdCBNdWFtbWFyIEdhZGRhZmkpIHVuZApzdGVoZSBkZXJ6ZWl0IHVudGVyIHBvbGl0aXNjaGVt
IEFzeWxzY2h1dHogZGVyIG9tYW5pc2NoZW4gUmVnaWVydW5nLgoKQml0dGUgYW50d29ydGVuIFNp
ZSBkcmluZ2VuZCBmw7xyIHdlaXRlcmUgRGV0YWlscy4KCm1laW5lIEUtTWFpbC1BZHJlc3NlIHVu
dGVuOiBheWlzaGFnZGRhZmlvQG1haWwucnUKVmllbGVuIERhbmsKTWl0IGZyZXVuZGxpY2hlbiBH
csO8w59lbiBBaXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
