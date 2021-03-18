Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A37E333FEF6
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 06:42:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5ED74ED79;
	Thu, 18 Mar 2021 05:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZoReQ_4Lho4m; Thu, 18 Mar 2021 05:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A50B64ECB4;
	Thu, 18 Mar 2021 05:42:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CF991BF489
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 05:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C59B60652
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 05:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RvdrfvsITZUX for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 05:42:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com
 [IPv6:2607:f8b0:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8EE96064D
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 05:42:09 +0000 (UTC)
Received: by mail-ot1-x32a.google.com with SMTP id
 m21-20020a9d7ad50000b02901b83efc84a0so4119218otn.10
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=e5E4cv+qzO6RqNYov3uCSW6dw7gV2q0enyiUMpZ0Cjg=;
 b=LyAApYYT3TQfh+yLVjVHE9ILKZZh3xAndVkUTbEakNpMFn9lKsw5w9XmVMhGg/1XBU
 l0SZqx+mpRqgQia+R0sTQAiMn9Fzu+Y44k6u2WRsGjJtmbmRfqNmSXI7Cg3IeqXa7Iep
 k9xcmerxp+WXJDzUQ8CfrtfJH7333tZXfx0mmEQKdBxL0lG5Lz1qy3PNY335ceNrsf5U
 YIjpsqqJCH/FwpsH0conEXCANsFNO/HtbAfpUMUc2KmjvJgrNG9aG+9m8/sTHuFn4RFP
 /7ZiqAP/rSuYYuLnN5tMrIp3Jv4OHZJw6v+TMMtgYaJpTuEyVcjiMrj2B1dxSFMNbh3X
 uQPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=e5E4cv+qzO6RqNYov3uCSW6dw7gV2q0enyiUMpZ0Cjg=;
 b=nNBX182dCnsVx0qpxG3lcmDge9w/MEIV5aAdSJNLb0Duzhf9ydJOkRDu5VqhLDZtyR
 s7BFDW36EzJIbTYcxNCWRIgcvKpvG7HH5H6XbiQua3M45JOiOHSCCS32a8elFdOarSlt
 cxJcrJG7tp5hensw9Aj5mcNCpYJkkzPKxWjVPp89G866KYknGrLTIu5AIlkN4KBYQ8RZ
 B/C3Cn5Y5bxwF+3IchBjML7DxGBaGvkIIAb3uhuiBL2gjBmpipEBhSclzV1OhZ9EZ6/O
 pk+6Zc7NgLlSy8mZH4jn4Tm7NNU2w0F2hX2Xz6XWo9RKzECF8K6Z5nD4XhMnahaYl1Z4
 cJTw==
X-Gm-Message-State: AOAM532jurcZBtMdp9YCYvkguOHpNXb65C1V9BmBLg6m1vDE6u61pZoy
 IrMWJ59VC63MWNiXcCENXXKntnlphllTztX02kI=
X-Google-Smtp-Source: ABdhPJy2GkYXi/bDDIvaBgNq+ChA9bCJlBqUGUMTmp+/pVXcMOoHj/tpoSVgbNFMMT5RUvJ8GYHRr2F0cRWbhh8qNIA=
X-Received: by 2002:a05:6830:408a:: with SMTP id
 x10mr6147308ott.248.1616046128852; 
 Wed, 17 Mar 2021 22:42:08 -0700 (PDT)
MIME-Version: 1.0
References: <CACY_kjSRbgSWsfo+JTyQdqorQ+wcy8OqAtKSbJt6tL4t-AUciw@mail.gmail.com>
In-Reply-To: <CACY_kjSRbgSWsfo+JTyQdqorQ+wcy8OqAtKSbJt6tL4t-AUciw@mail.gmail.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Thu, 18 Mar 2021 11:11:57 +0530
Message-ID: <CAKfKVtF+9XyOXq2aLoEyMFr9ZsvHOsqPaAPu79ziUtF-VeMnWw@mail.gmail.com>
Subject: Re: [PATCH v10 5/9] staging: clocking-wizard: Add support for dynamic
 reconfiguration
To: Zhengxun Li <zhengxunli.mxic@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, slwu@mxic.com.tw,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 Julien Su <juliensu@mxic.com.tw>, Rob Herring <robh+dt@kernel.org>,
 git@xilinx.com, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBNYXIgMTUsIDIwMjEgYXQgMTI6MzcgUE0gWmhlbmd4dW4gTGkgPHpoZW5neHVubGku
bXhpY0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgU2h1YmhyYWp5b3RpLAo+Cj4gTXkgbmFtZSBp
cyBaaGVuZ3h1biBhbmQgSSBhbSB0aGUgZW5naW5lZXIgZnJvbSBNYWNyb25peC4gV2UgYXJlCj4g
dXNpbmcgdGhlIHBsYXRmb3JtIFBpY29aZWQgNzAxNS83MDMwIFNPTSAoU3lzdGVtIE9uIE1vZHVs
ZSksCj4gd2hpY2ggaXMgYmFzZWQgb24gWGlsaW54IFp5bnHCri03MDAwIEFsbCBQcm9ncmFtbWFi
bGUgKEFQKSBTb0MgdG8KPiB2ZXJpZnkgb3VyIEZsYXNoIGRyaXZlci4gT2YgY291cnNlLCB3ZSBh
cmUgYWxzbyB1c2luZyB5b3VyIGNsb2NrCj4gd2l6YXJkLCBvdXIgdmVyc2lvbiBzZWVtcyB0byBi
ZSB2NS4yLCBidXQgc29tZXRoaW5nIHdlbnQgd3JvbmcuCj4KPiArc3RhdGljIGludCBjbGtfd3py
ZF9keW5hbWljX3JlY29uZmlnKHN0cnVjdCBjbGtfaHcgKmh3LCB1bnNpZ25lZCBsb25nIHJhdGUs
Cj4gKyB1bnNpZ25lZCBsb25nIHBhcmVudF9yYXRlKQo+ICt7Cj4gKyBpbnQgZXJyOwo+ICsgdTMy
IHZhbHVlOwo+ICsgdW5zaWduZWQgbG9uZyBmbGFncyA9IDA7Cj4gKyBzdHJ1Y3QgY2xrX3d6cmRf
ZGl2aWRlciAqZGl2aWRlciA9IHRvX2Nsa193enJkX2RpdmlkZXIoaHcpOwo+ICsgdm9pZCBfX2lv
bWVtICpkaXZfYWRkciA9IGRpdmlkZXItPmJhc2UgKyBkaXZpZGVyLT5vZmZzZXQ7Cj4gKwo+ICsg
aWYgKGRpdmlkZXItPmxvY2spCj4gKyBzcGluX2xvY2tfaXJxc2F2ZShkaXZpZGVyLT5sb2NrLCBm
bGFncyk7Cj4gKyBlbHNlCj4gKyBfX2FjcXVpcmUoZGl2aWRlci0+bG9jayk7Cj4gKwo+ICsgdmFs
dWUgPSBESVZfUk9VTkRfQ0xPU0VTVChwYXJlbnRfcmF0ZSwgcmF0ZSk7Cj4gKwo+ICsgLyogQ2Fw
IHRoZSB2YWx1ZSB0byBtYXggKi8KPiArIG1pbl90KHUzMiwgdmFsdWUsIFdaUkRfRFJfTUFYX0lO
VF9ESVZfVkFMVUUpOwo+ICsKPiArIC8qIFNldCBkaXZpc29yIGFuZCBjbGVhciBwaGFzZSBvZmZz
ZXQgKi8KPiArIHdyaXRlbCh2YWx1ZSwgZGl2X2FkZHIpOwo+ICsgd3JpdGVsKDB4MDAsIGRpdl9h
ZGRyICsgV1pSRF9EUl9ESVZfVE9fUEhBU0VfT0ZGU0VUKTsKPgo+IFdoeSBwaGFzZSBhbHdheXMg
c2V0IHRvIHplcm8/IFdlIHdhbnQgdG8gc3VwcG9ydCBEVFIgb3BlcmF0aW9uIGluCj4gRmxhc2gg
ZHJpdmVyLiBDYW4geW91IGFkZCBhIHNldF9waGFzZSBmdW5jdGlvbiB0byBhZGp1c3QgdGhlIHBo
YXNlPwo+ClRoZSBwaGFzZSBzZXR0aW5nIGlzIGEgc2VwYXJhdGUgZmVhdHVyZSB3aWxsIGFkZHJl
c3MgaW4gYSBzZXBhcmF0ZSBzZXJpZXMuCgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
