Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDC04FA03F
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Apr 2022 01:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4DB241E82;
	Fri,  8 Apr 2022 23:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CFfhGcJrs_xg; Fri,  8 Apr 2022 23:47:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D86241E80;
	Fri,  8 Apr 2022 23:47:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7881BF5DD
 for <devel@linuxdriverproject.org>; Fri,  8 Apr 2022 23:47:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D12F401B3
 for <devel@linuxdriverproject.org>; Fri,  8 Apr 2022 23:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0dwnkJ8uUGTJ for <devel@linuxdriverproject.org>;
 Fri,  8 Apr 2022 23:47:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com
 [IPv6:2607:f8b0:4864:20::333])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B2B140137
 for <devel@driverdev.osuosl.org>; Fri,  8 Apr 2022 23:47:53 +0000 (UTC)
Received: by mail-ot1-x333.google.com with SMTP id
 a17-20020a9d3e11000000b005cb483c500dso7145604otd.6
 for <devel@driverdev.osuosl.org>; Fri, 08 Apr 2022 16:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/mhawLYqSD4ihGrLIqf8HesRiShc0rzLBY5rz5Z4/wY=;
 b=PdTOwciY7R/25sEuNSC4Y9OAu7XyvLwS8NbdVLkDZsjWdjk3NPmfyEa+tOt/wOXEya
 0KMcG/TayPJFz4KU/xjFIuDCm3Zk+Fpzw46V5W9zYxYFxxXDMzL0Snq5glstRZ11N/5F
 irqr1mqcu3CA0DNBSRsLb7bcC5nUhiTi1BLwLV5tVa3RmiXgTRWmreiQJall87sJvRDL
 k7yeH8RPbe/YvAkvmHy87IIkFmxeovNUdSIOjgATOdBA6FMceDMuyrOKWgnHJ2DMJx8g
 x7TcnmGLCbHeiM0n2bBUPqZzGPv7wYDhJHmlUf9XYooYzC2JDemjIqmWBLjXqqap4T+R
 g44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=/mhawLYqSD4ihGrLIqf8HesRiShc0rzLBY5rz5Z4/wY=;
 b=przvJaqvljb643NelfnVWktZVpb/FD4OI8zpzQIBd4aGLLMfXWqxBvz1wzwvvWZo8C
 xOwxgm1IVteewY0m9P+VI7XzLLj2OLUXdRdOktrY0NE5sYby9p0HOx5ZutwqT65z/pfu
 WiC0xyL8wc4H5GQYiFTaY0AygCfcJVqS1gH/mM0VbqVgLb3wUfEx+Os3tTtpx4Q8p4q8
 FPyBMtPhzzbXCIHIvIY0ZImFabxoW9r0lZBLBtsYEqOK/IvvBnKsuBDuCaHWudlaoYiS
 2BxkAmAaXvRA5y4QtZZhR5OjFupDJYoBXr1XCPiAesOoqteBm4CKSKGzf0oJMKS1DcF/
 FOWg==
X-Gm-Message-State: AOAM533NUoSFPyR57Bepb8TWW2BVfVaVJMZTPvfzbqQcoAacY2gbO0uL
 iXGbWuzF6UkXbx4eR+ibqC7Fp3SKTCdQ9sERNqE=
X-Google-Smtp-Source: ABdhPJwDm5PYEpbUTTxWCAsGW1GzrP0YGdbJMxsPfqjmAP8yufR4DMpGSoxtBWL8yQZTKQwcF2/d1BETdfenCGPqq5s=
X-Received: by 2002:a9d:4c81:0:b0:5e6:b6a4:8fec with SMTP id
 m1-20020a9d4c81000000b005e6b6a48fecmr3253562otf.286.1649461672262; Fri, 08
 Apr 2022 16:47:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:71cd:0:0:0:0:0 with HTTP;
 Fri, 8 Apr 2022 16:47:51 -0700 (PDT)
From: "Dr. Aisha al-gaddafi." <dr.aishaalgaddafi09@gmail.com>
Date: Fri, 8 Apr 2022 23:47:51 +0000
X-Google-Sender-Auth: XDPokKzgxcdTE7sAJz_3u3I3DIM
Message-ID: <CAPoac1OzhMdEW85tqYJO2MTs7eQ8hiN+KbioEc=yU=6GJRf=OA@mail.gmail.com>
Subject: Please i need your help
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IFBsZWFzZSBpIG5lZWQgeW91ciBoZWxwCgpJIGFtIHNlbmRpbmcgbXkgZ3JlZXRpbmdzIHRvIHlv
dSBmcm9tIHRoZSBTdWx0YW5hdGUgb2YgT21hbiwgSW4gdGhlCmNhcGl0YWwgY2l0eSBvZiBNdXNj
YXQuCgpNYXkgaSB1c2UgdGhpcyBtZWRpdW0gdG8gb3BlbiBhIG11dHVhbCBjb21tdW5pY2F0aW9u
IHdpdGggeW91LCBhbmQKc2Vla2luZyB5b3VyIGFjY2VwdGFuY2UgdG93YXJkcyBpbnZlc3Rpbmcg
aW4geW91ciBjb3VudHJ5IHVuZGVyIHlvdXIKbWFuYWdlbWVudCBhcyBteSBwYXJ0bmVyLCBNeSBu
YW1lIGlzIEFpc2hhIEdhZGRhZmkgYW5kIHByZXNlbnRseQpsaXZpbmcgaW4gT21hbiwgaSBhbSBh
IFdpZG93IGFuZCBzaW5nbGUgTW90aGVyIHdpdGggdGhyZWUgQ2hpbGRyZW4sCnRoZSBvbmx5IGJp
b2xvZ2ljYWwgRGF1Z2h0ZXIgb2YgbGF0ZSBMaWJ5YW4gUHJlc2lkZW50IChMYXRlIENvbG9uZWwK
TXVhbW1hciBHYWRkYWZpKSBhbmQgcHJlc2VudGx5IGkgYW0gdW5kZXIgcG9saXRpY2FsIGFzeWx1
bSBwcm90ZWN0aW9uCmJ5IHRoZSBPbWFuaSBHb3Zlcm5tZW50LgoKSSBoYXZlIGZ1bmRzIHdvcnRo
IOKAnFR3ZW50eSBTZXZlbiBNaWxsaW9uIEZpdmUgSHVuZHJlZCBUaG91c2FuZCBVbml0ZWQKU3Rh
dGUgRG9sbGFyc+KAnSAtJDI3LjUwMC4wMDAuMDAgVVMgRG9sbGFycyB3aGljaCBpIHdhbnQgdG8g
ZW50cnVzdCBvbgp5b3UgZm9yIGludmVzdG1lbnQgcHJvamVjdCBpbiB5b3VyIGNvdW50cnkuSWYg
eW91IGFyZSB3aWxsaW5nIHRvCmhhbmRsZSB0aGlzIHByb2plY3Qgb24gbXkgYmVoYWxmLCBraW5k
bHkgcmVwbHkgdXJnZW50IHRvIGVuYWJsZSBtZQpwcm92aWRlIHlvdSBtb3JlIGRldGFpbHMgdG8g
c3RhcnQgdGhlIHRyYW5zZmVyIHByb2Nlc3MuCgpJIHNoYWxsIGFwcHJlY2lhdGUgeW91ciB1cmdl
bnQgcmVzcG9uc2UKClRoYW5rcwoKWW91cnMgVHJ1bHkgQWlzaGEKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
