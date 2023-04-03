Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 593016D452D
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Apr 2023 15:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD7854160B;
	Mon,  3 Apr 2023 13:03:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD7854160B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EzdaUSlQ_3Gx; Mon,  3 Apr 2023 13:03:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7608941609;
	Mon,  3 Apr 2023 13:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7608941609
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF101BF955
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 13:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E76CA814B3
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 13:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E76CA814B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AQdlZOWK3nm1 for <devel@linuxdriverproject.org>;
 Mon,  3 Apr 2023 13:03:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A76E48124A
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A76E48124A
 for <devel@driverdev.osuosl.org>; Mon,  3 Apr 2023 13:03:34 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id k37so38030556lfv.0
 for <devel@driverdev.osuosl.org>; Mon, 03 Apr 2023 06:03:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680527012;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vm3fGC5UJPfA+zhDzilA66RryHCV1Pt6HDNCexDFbsE=;
 b=5LWVsW0Jr+euzMGWt+E3KzrNRoX4SWa0HHKymXSPiLJ8mCvp1CGXCojmFKDUGwrqB3
 Oqbg964Rrmq/fy6piWzXVv6kv/76lg5WOANvdnqAmXnN5ThQaW3cbdtBSNqAXZtnzC01
 SSwcrNeqxjIMg0yZvPoYO8BIHyt1I+F7KXS1jIPaKpsB01yV6nzlJo9VNqwY4yFVzlLk
 0DJf4sBVd0uwjJRTjWaR9xwCmbXQQvY3aVwZQBUksNAFnSGPQif6iImru+lTh5ukntn9
 NP0NIIybsBsd3olQJIz6cyRQfm9ZK+qfxGKkONSZAvVXtz0m0VL4hLV1nzAbFKcEMY/J
 sMcQ==
X-Gm-Message-State: AAQBX9eRVX9OeLQPhAqqTQ/wB98+tqD4oKkApMIlfrIip7S0Q7tdQ1b/
 i1IN/cbYYngJhaznjuFO/bSsHJhqF9arG5D8ZXM=
X-Google-Smtp-Source: AKy350arcwY8l3bP6Rcn8nhMh6quoa2lIjfZHAcSYTF7Qe3m4nwMHUxnNWsHzcPIgOrzc+8HmWIAq6IyIDC7uhIuNcw=
X-Received: by 2002:ac2:5610:0:b0:4dd:a4e1:4861 with SMTP id
 v16-20020ac25610000000b004dda4e14861mr10498121lfd.3.1680527012185; Mon, 03
 Apr 2023 06:03:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab2:90e:0:b0:1a2:f860:cb73 with HTTP; Mon, 3 Apr 2023
 06:03:31 -0700 (PDT)
From: linda clifford <lindaclifford03@gmail.com>
Date: Mon, 3 Apr 2023 06:03:31 -0700
Message-ID: <CAGxdmMPS0r_t5beFVxCaco_UmzJ3nMQ1FNQW9XNFpp08cs+6WQ@mail.gmail.com>
Subject: WITH DUE RESPECT
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680527012;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=vm3fGC5UJPfA+zhDzilA66RryHCV1Pt6HDNCexDFbsE=;
 b=aX+0OjJLThCvgG4gOMfuzVLsb0vyz5fOVONRsX9WxAlEk52CaD5YTNGzzDJvpbBjOU
 d1qG5J4IjlPNfK2K5YWnSvnPKfjZqiIubWKovYcyDEV/54yJxejFd/+RfmLb1DYh8qEr
 M5KNScBlsvF6csTeKzJZQjcPKLtRadH/+Aw8D0hWT+a5gwCEnWGKY8mlVCv/zJacCCNL
 29/YHFhQoxnTUMrs2bol7kT8ImaueidGQNKZWunETizyzz/g0SXkXNyqoV4gUhv7AmuH
 49+/ovEX+trwyhLaoVZBePu3uzboP0x5hcGzvJ6NMGkw5Slzj58OozLhR1PknRNH+Qsn
 MqBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=aX+0OjJL
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
Reply-To: limda54@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhcmVzdCBiZWxvdmVkIGluIHRoZSBMb3JkLAoKSG93IGFyZSB5b3U/IE15IG5hbWUgaXMgTXJz
wqAgTGluZGEgQ2xpZmZvcmQgZnJvbSBGcmFuY2UgLCBidXQgYmFzZWQgaW4KQWZyaWNhIGNvdGUg
ZCdpdm9pcmUgZm9yIDEyIHllYXJzIGFzIGEgYnVzaW5lc3Mgd29tYW4gZGVhbGluZyB3aXRoCmdv
bGQgZXhwb3J0YXRpb24sIEkgYW0gNzUgeWVhcnMgb2xkIHdpZG93LiBJIGhhdmUgYmVlbiBkaWFn
bm9zZWQgd2l0aApjYW5jZXIuIEl0IGhhcyBkZWZpbGVkIGFsbCBmb3JtcyBvZiBtZWRpY2FsIHRy
ZWF0bWVudCBhbmQgYWNjb3JkaW5nIHRvCm1lZGljYWwgZXhwZXJ0czsgSSBoYXZlIGZldyB3ZWVr
cyB0byBsaXZlIHdpdGhvdXQgYW55IGZhbWlseSBtZW1iZXJzCmFuZCBubyBjaGlsZC4KCkkgaGF2
ZSBub3QgcGFydGljdWxhcmx5IGxpdmVkIG15IGxpZmUgc28gd2VsbCwgYXMgSSBuZXZlciByZWFs
bHkgY2FyZWQKZm9yIGFueW9uZSAobm90IGV2ZW4gbXlzZWxmKSwgYnV0IG15IGJ1c2luZXNzLiBJ
IHdhcyBuZXZlciBvcGVuCmhhbmRlZCwgSSB3YXMgYWx3YXlzIGhvc3RpbGUgdG8gcGVvcGxlIGxp
a2UgdGhleSBuZXZlciBoYWQgaG9wZXMgb2YKYmVjb21pbmcgYXMgc3VjY2Vzc2Z1bCBhcyBtZS4g
QnV0IG5vdyBJIHJlZ3JldCBhbGwgdGhpcyBhcyBJIG5vdyBrbm93CnRoYXQgdGhlcmUgaXMgbW9y
ZSB0byBsaWZlIHRoYW4ganVzdCB3YW50aW5nIHRvIGJlIHByb3NwZXJvdXMuIEkKYmVsaWV2ZSB3
aGVuIEdvZCBnaXZlcyBtZSBhIHNlY29uZCBjaGFuY2UgdG8gY29tZSB0byB0aGlzIHdvcmxkLCBJ
CndvdWxkIGxpdmUgbXkgbGlmZSBhIGRpZmZlcmVudCB3YXkgZnJvbSBob3cgSSBoYXZlIGxpdmVk
IGl0IGJ1dCBub3cKdGhhdCBHb2QgaGFzIGNhbGxlZCBtZSBJIHdhbnQgdG8gZ2l2ZSB0byB0aGUg
Y2hhcml0eSBhcyBJIHdhbnQgR29kIHRvCmJlIG1lcmNpZnVsIHRvIG1lIGFuZCBhY2NlcHQgbXkg
c291bC4KCk15IG1pbmQgaXMgbm90IGF0IHJlc3QgYmVjYXVzZSBpIGFtIHdyaXRpbmcgdGhpcyBs
ZXR0ZXIgYXQgdGhlCmhvc3BpdGFsIEludGVuc2l2ZSBjYXJlIHVuaXQuIEhlbmNlIEkgaGF2ZSBk
ZWNpZGVkIHRvIGdpdmUgdG8gY2hhcml0eQpvcmdhbml6YXRpb25zIGFzIEkgd2FudCB0aGlzIHRv
IGJlIG9uZSBvZiB0aGUgbGFzdCBnb29kIGRlZWRzIEkgZGlkIG9uCmVhcnRoLCBidXQgbm93IHRo
YXQgbXkgaGVhbHRoIGhhcyBkZXRlcmlvcmF0ZWQgc28gYmFkbHksIEkgY2Fubm90IGRvCnRoaXMg
bXlzZWxmIGFueW1vcmUuCgpJIGhhdmUgZml4ZWTCoCBkZXBvc2l0ICQ1LjUgbWlsbGlvbiBVU0Qg
d2l0aCB0aGUgQmFuayApIGhlcmUgaW4gY290ZQpkJ2l2b2lyZSBhbmQgaSBoYXZlIGluc3RydWN0
ZWQgdGhlIGJhbmsgbWFuYWdlbWVudCB0byB0cmFuc2ZlciB0aGUKZnVuZCB0byB5b3UgYXMgbXkg
YnVzaW5lc3MgcGFydG5lciB0aGF0IHdpbGwgYXBwbHkgdG8gdGhlIGJhbmsgYWZ0ZXIgaQphbSBn
b25lLCBidXQgeW91IHdpbGwgYXNzdXJlIG1lIHRoYXQgeW91IHdpbGwgZ2l2ZSA4MCUgdG8gdGhl
Cm9ycGhhbmFnZXMgaG9tZSBhbmQgZmV3IGNoYXJpdHkgb3JnYW5pemF0aW9ucyBpbiB5b3VyIGNv
dW50cnkgZm9yIG15CmhlYXJ0IHRvIHJlc3QgYW5kIHRha2UgMjAlIGZvciB5b3VyIGVmZm9ydHMu
IFBsZWFzZSBJZiB5b3UgYWNjZXB0IHRvCnByb2NlZWQga2luZGx5IHNlbmQgeW91ciBkZXRhaWxz
IGFzIGxpc3RlZCBiZWxvdyBzbyB0aGF0IGkgd2lsbApmb3J3YXJkIGl0IHRvIHRoZSBiYW5rIGZv
ciB0aGUgdHJhbnNmZXIgcHJvY2VzcyB0aGFua3MuCgpZb3VyIGNvbXBsZXRlIG5hbWUKQWRkcmVz
cyAoaG9tZS9vZmZpY2UpCllvdXIgbW9iaWxlIG51bWJlcgpZb3VyIGFnZQpPY2N1cGF0aW9uCkEg
Y29weSBvZiB5b3VyIElECgpUaGFuayB5b3UgZm9yIHlvdXIgdGltZSBhbmQgZGV2b3Rpb24sIEkn
bGwgYmUgYXdhaXRpbmcgeW91ciBxdWljayByZXNwb25zZS4KCkdvZCBiZSB3aXRoIHlvdS4KCk1y
cyBMaW5kYSBDbGlmZm9yZC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
