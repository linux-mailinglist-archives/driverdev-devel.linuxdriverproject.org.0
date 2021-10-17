Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0214309CA
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 Oct 2021 16:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAA6640311;
	Sun, 17 Oct 2021 14:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zOEGaNiwi6dh; Sun, 17 Oct 2021 14:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F15CE40175;
	Sun, 17 Oct 2021 14:38:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 87E811BF5AC
 for <devel@linuxdriverproject.org>; Sun, 17 Oct 2021 14:38:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C34C402C9
 for <devel@linuxdriverproject.org>; Sun, 17 Oct 2021 14:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=agerio.com.br
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jUqC2IJgHTTh for <devel@linuxdriverproject.org>;
 Sun, 17 Oct 2021 14:38:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.agerio.com.br (mail3.agerio.com.br [177.47.113.51])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDCB4400F6
 for <devel@driverdev.osuosl.org>; Sun, 17 Oct 2021 14:38:46 +0000 (UTC)
Received: from mimosa.agerio.com.br (unknown [192.168.252.10])
 by mail.agerio.com.br (Postfix) with ESMTP id 93994630CA;
 Sun, 17 Oct 2021 11:02:22 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=agerio.com.br;
 s=default; t=1634479348;
 bh=2q31gy4k5R/DJs0eL5OO6ZbeJWvdQ44vutGSP4M3piU=;
 h=Subject:To:From:Date:Reply-To:From;
 b=aHYw2ZdZ0RpDl8n1MvXU5moan/wIHcp7WZFIOHSEOZQFN2osemMFO1DW3lva91RmA
 PWrPhlz10i+o6EP/3lUw7RmvpwSFfUpfH1Kdxm4Ign0EH5LRimKR9xB7W+OY8nhQuP
 /YyjakPhF0eryhevnXEN6GLDnvegxezomRABNA2PPpZcc47ve6IGtzrmRFlwZnxP+s
 RFlY7y9ouCqZ8aM1ty2bmhX7E+DfDOiKDdw/Ecd+nW6gnL3YwJo3gAUuiPeAW5Q0uE
 Fk6Y4XuD5PF9bG9I8Q8T8Jjio6znXpwzeofrfJOuwUSzwVgESfcDL/ub71RR0OjTl2
 XfZlK4v1XNuEw==
Received: from localhost (localhost [127.0.0.1])
 by mimosa.agerio.com.br (Postfix) with ESMTP id EE585B28580;
 Sun, 17 Oct 2021 10:59:16 -0300 (-03)
X-Virus-Scanned: amavisd-new at mimosa.agerio.com.br
Received: from mimosa.agerio.com.br ([127.0.0.1])
 by localhost (mimosa.agerio.com.br [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OMZhJsVJ3YpI; Sun, 17 Oct 2021 10:59:16 -0300 (-03)
Received: from info.14p54xjy1kgu5m1lxoc4mq0acd.mx.internal.cloudapp.net
 (unknown [192.168.252.8])
 by mimosa.agerio.com.br (Postfix) with ESMTPS id B26D5B2840D;
 Sun, 17 Oct 2021 10:59:10 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Investment fund..
To: Recipients <alessandrahorto@agerio.com.br>
From: "Ms. Reem E.A" <alessandrahorto@agerio.com.br>
Date: Sun, 17 Oct 2021 13:59:01 +0000
Message-Id: <20211017135910.B26D5B2840D@mimosa.agerio.com.br>
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
Reply-To: reem2018@daum.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkRlYXIgRnJpZW5kLAoKR29vZCBkYXkgdG8geW91LiBBcHBhcmVudGx5IHRoaXMgZW1haWwgd2ls
bCBiZSBjb21pbmcgdG8geW91IGFzIGEgc3VycHJpc2Ugc2luY2Ugd2UgaGF2ZSBub3QgbWV0IGJl
Zm9yZSBub3cuIE15IG5hbWUgaXMgUmVlbSBFLiBBbC1IYXNoaW1pLCB0aGUgRW1pcmF0ZXMgTWlu
aXN0ZXIgb2YgU3RhdGUgZm9yIGludGVybmF0aW9uYWwgY29vcGVyYXRpb24gYW5kIE1hbmFnaW5n
IERpcmVjdG9yIG9mIFVuaXRlZCBBcmFiIEVtaXJhdGVzIChEdWJhaSkgV29ybGQgRXhwbyAyMDIw
IENvbW1pdHRlZS4gSSBhbSB3cml0aW5nIHlvdSB0byBrbm93IGlmIHlvdXIgd291bGQgYmUgd2ls
bGluZyB0byByZWNlaXZlIGFuZCBpbnZlc3QgYSBodWdlIHN1bSBvbiBteSBiZWhhbGYuIFRoaXMg
ZnVuZCBpcyBteSBzaGFyZSBvZiBncmF0aWZpY2F0aW9uIGZyb20gZm9yZWlnbiBjb21wYW5pZXMg
d2hvbSBJIGhlbHBlZCBkdXJpbmcgdGhlIGJpZGRpbmcgZXhlcmNpc2UgdG93YXJkcyB0aGUgRHVi
YWkgV29ybGQgRXhwbyAyMDIwLgoKQW0gYSBzaW5nbGUgQXJhYiB3b21lbiBhbmQgc2VydmluZyBh
cyBhIG1pbmlzdGVyLCB0aGVyZSBpcyBhIGxpbWl0IHRvIG15IHBlcnNvbmFsIGluY29tZSBhbmQg
aW52ZXN0bWVudCBsZXZlbCBhbmQgRm9yIHRoaXMgcmVhc29uLCBJIGNhbm5vdCByZWNlaXZlIHN1
Y2ggYSBodWdlIHN1bSBiYWNrIHRvIG15IGNvdW50cnkgb3IgaW4gbXkgcGVyc29uYWwgYWNjb3Vu
dCwgc28gYW4gYWdyZWVtZW50IHdhcyByZWFjaGVkIHdpdGggdGhlIGZvcmVpZ24gY29tcGFuaWVz
IHRvIGRpcmVjdCB0aGUgZ3JhdGlmaWNhdGlvbnMgdG8gYW4gb3BlbiBiZW5lZmljaWFyeSBhY2Nv
dW50IHdpdGggYSBmaW5hbmNpYWwgaW5zdGl0dXRpb24gd2hlcmUgaXQgd2lsbCBiZSBwb3NzaWJs
ZSBmb3IgbWUgdG8gaW5zdHJ1Y3QgZnVydGhlciB0cmFuc2ZlciBvZiB0aGUgZnVuZCB0byBhIHRo
aXJkIHBhcnR5IGFjY291bnQgZm9yIGludmVzdG1lbnQgcHVycG9zZSB3aGljaCBpcyB0aGUgcmVh
c29uIGkgY29udGFjdGVkIHlvdSB0byByZWNlaXZlIHRoZSBmdW5kIGFzIG15IHBhcnRuZXIgZm9y
IGludmVzdG1lbnQgaW4geW91ciBjb3VudHJ5LgoKVGhlIGFtb3VudCBpcyBob3dldmVyLCB2YWx1
ZWQgYXQgRXVybyDigqw0Nyw3NDUsNTMzLjAwIE1pbGxpb24gRXVybyBhbmQgdGhlIGZpbmFuY2lh
bCBpbnN0aXR1dGlvbiBpcyB3YWl0aW5nIGZvciBteSBpbnN0cnVjdGlvbiB0byB0cmFuc2ZlciB0
aGUgZnVuZHMgdG8gYW55IGRlc2lnbmF0ZWQgYWNjb3VudC4gSSBoYXZlIGRlY2lkZWQgdG8gY29t
cGVuc2F0ZSB5b3Ugd2l0aCAzMCUgb2YgdGhlIHRvdGFsIGFtb3VudCBhbmQgeW91IHdpbGwgYWxz
byBnZXQgYmVuZWZpdCBmcm9tIHRoZSBpbnZlc3RtZW50LgoKUkVQTFkgVE86IHJlZW0uYWxoYXNo
aW1pQHlhbmRleC5jb20gRk9SIE1PUkUgREVUQUlMUwoKTXkgUHJvZmlsZTogaHR0cHM6Ly93d3cu
enUuYWMuYWUvbGVhZGVyc2hpcDIwMDgvaGFzaGVtaS5odG1sCgpSZWdhcmRzLApNcy4gUmVlbS4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
