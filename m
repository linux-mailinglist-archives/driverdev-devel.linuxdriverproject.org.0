Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E43F41D2A3C
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 10:36:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 63F2A8808F;
	Thu, 14 May 2020 08:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s+6v1ENml2BK; Thu, 14 May 2020 08:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8022687196;
	Thu, 14 May 2020 08:36:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B0C31BF2C2
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 08:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 73DBC87E6A
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 08:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gEtJcOHtp25X for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 08:36:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E2C1286645
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 08:36:01 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id 17so2488398ilj.3
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 01:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=F7/O7u6Yoy17a0y4VZuNuFz95QIROjdd9b1YfUvRjNY=;
 b=mPQOpp2ygDsFKBHWpDul9+ylovwa8+miiC6oJa5tZd8KlegTqz2nDoAaHg47Nb2MZ5
 qltaRaM7muKMHeXOrO2fwpa3wFwmv3kW3DStEUy2KNcOqDggAoKwgJGViwaTjR+rHHZC
 8+eEyJOvqmyZTzDdW34GxJ1YvN7CvOWGhV4RqPpV2oGimC5+5tQXqIJTELRy2U6/j73p
 zGXovuOoK1sB3pW0xDOkrZg8E64bgJ8oQomJ+J+9ZjA8rnMIJ9/1k3Y3RN+gdH1V/IXh
 /2zoCq7uUJgGIZJshS8wys0H4ISssk1sn6/xiTn93PiMnnIGnnHSC6Om47nRWmqZtnaO
 tv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=F7/O7u6Yoy17a0y4VZuNuFz95QIROjdd9b1YfUvRjNY=;
 b=P+GGo1tcqSqwVP6IrnKXt+LzSV5MO50w3cK17OxkCbyjkQXD3OMsRCk0gIGuo5919q
 DHQCKF5uGh1FvgoWpsrzYxorBCJYo2qAaJhemjVVr6GhFM1YopN0xt9qHVi3X+XcILoW
 oQoQakPuytmPNFTMHrLaCKVhqfObs5t34+lKbDUvoDBzX0q2oSoxJHTXqtWWeg2WNPVh
 +6I2NvP9L8uMtAF7MIMjK1XWXPbpuo8JZEs7gsjrP/Z2KhObBDHwVbQsyA92EqL/IT2v
 MK6r2CiZd8eWeb7nLRKaKLyRlB73w3zzvyfdPHg5IdaGRRrmZGTQBVcBp8N7ok9FVDyX
 SDQQ==
X-Gm-Message-State: AOAM532f9I5LMOMVivXGqCxHuzDe8iERPxBXGW+7ZARbURiBy2co/jjD
 2IpWu0MTZZoMINwVigafKRFhBFkVMHU47t2jBg==
X-Google-Smtp-Source: ABdhPJwI3wxLR/z0EoYdZ83lvE+gMIwM5l2mg9Tp46y2SZM2AEdqekuNDjqnmBdXCEPVgv8aEvfoHvypS2EVvO/w+BU=
X-Received: by 2002:a92:d40f:: with SMTP id q15mr3235047ilm.97.1589445361238; 
 Thu, 14 May 2020 01:36:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a92:ce45:0:0:0:0:0 with HTTP; Thu, 14 May 2020 01:36:00
 -0700 (PDT)
From: "M. Wiberg Caitlin" <mwibergcaitlin997@gmail.com>
Date: Thu, 14 May 2020 08:36:00 +0000
Message-ID: <CAOw4te2W-L2zP-5SfBBT+-U+uNhDVAeHpfqzyPXLvVNmZwvrTg@mail.gmail.com>
Subject: HI
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
Reply-To: mrsjaneyzachary4@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkRlYXIgQmVsb3ZlZCwKCknigJltIE1SUy5KQU5FWSBaQUNIQVJZLCA2OXllYXJzIG9sZCBh
ZmZlY3RlZCB3aXRoIGJyZWFzdCBjYW5jZXIsIHRoZSB3aWZlCgpvZiBsYXRlIEdhYnJpZWxsYSBL
ZW5uZWR5LCAgdGhlIERpcmVjdG9yIG9mIEhpZ2ggUml2ZXIgR29sZCBNaW5lcyBMdGQKCkJ1cmtp
bmEgRmFzbyBXZXN0IEFmcmljYS4gSSBhbSBjb250YWN0aW5nIHlvdSBiZWNhdXNlIG9mIG15IGhl
YWx0aAoKY29uZGl0aW9uLGkgbmVlZCBhIHJlbGlhYmxlIHBlcnNvbiwgd2hvIHdpbGwgaGFuZGxl
IHRoaXMgcHJvamVjdAoKYWNjb3JkaW5nbHksIGFjY29tcGxpc2ggbXkgaGVhcnQgZGVzaXJlIGFu
ZCB1dGlsaXplIHRoaXMgZnVuZC4gSSBoYXZlCgpkZWNpZGVkIHRvIGRvbmF0ZSB0aGUgc3VtIFR3
ZW50eS1GaXZlIE1pbGxpb24gVHdvIEh1bmRyZWQgVGhvdXNhbmQgVW5pdGVkCgpTdGF0ZSBEb2xs
YXJzIE9ubHkgKCQyNSwyMDAsMDAwLjAwKSB0byBDaGFyaXR5IE9yZ2FuaXphdGlvbnMgb3IgdG8K
CnN1cHBvcnQgdGhlIE9ycGhhbnMsIE1vdGhlcmxlc3MgQmFiaWVzLExlc3MgcHJpdmlsZWdlZCBh
bmQgZnJlZSBNZWRpY2FsICYKCk1lZGljaW5lIFBvb3IgUGVvcGxlJ3MgYXJvdW5kIHRoZSBXb3Js
ZCBzaW5jZSBJIGRvbiB0IGhhdmUgYW55IGNoaWxkIGFuZAoKZG8gbm90IHdhbnQgdGhlIGJhbmsg
dGFrZSBvdmVyIHRoZSBmdW5kLiBJIGRvbid0IHJlYWxseSBrbm93IGlmIGkgYW0KCmdvaW5nIHRv
IHN1cnZpdmUgdGhpcyBzdGFnZSwgdGhlcmVmb3JlIGlmIHlvdSByZWFkeSB0byBoYW5kbGUgdGhp
cwoKcHJvamVjdCwga2luZGx5IHJlc3BvbnNlIHNvIHRoYXQgaSB3aWxsIGluc3RydWN0IHRoZSBi
YW5rIHRvIHRyYW5zZmVyIHRoZQoKZnVuZCB0byB5b3VyIGFjY291bnQuCgpDb250YWN0IG15IHBy
aXZhdGUgZW1haWwgb25seSBpZiB5b3UgYXJlIGludGVyZXN0ZWQKCihtcnNqYW5leXphY2hhcnk0
QGdtYWlsLmNvbSkKClJlbWFpbiBibGVzc2VkIGluIHRoZSBuYW1lIG9mIHRoZSBMb3JkLgoKUmVn
YXJkcwoKTXJzLkphbmV5IFphY2hhcnkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
