Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 556AE8FA590
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2024 00:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0E5E842FB;
	Mon,  3 Jun 2024 22:32:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pO83RvTklqmm; Mon,  3 Jun 2024 22:32:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE1228431C
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE1228431C;
	Mon,  3 Jun 2024 22:32:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A5541BF2B1
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2024 22:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 753B0409D2
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2024 22:32:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AssLOmuW9kZ6 for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2024 22:32:05 +0000 (UTC)
X-Greylist: delayed 602 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 03 Jun 2024 22:32:05 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4F694409CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F694409CA
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=142.93.206.255;
 helo=server.chartardaccountgroupa.shop;
 envelope-from=info@chartardaccountgroupa.shop; receiver=<UNKNOWN> 
Received: from server.chartardaccountgroupa.shop
 (server.chartardaccountgroupa.shop [142.93.206.255])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F694409CA
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2024 22:32:05 +0000 (UTC)
From: "Office" <info@chartardaccountgroupa.shop>
To: devel@driverdev.osuosl.org
Subject: It is Very Important We Hear From You 
Date: 4 Jun 2024 05:21:58 +0700
Message-ID: <20240604052158.BD4C00FA86D67AE0@chartardaccountgroupa.shop>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim;
 d=chartardaccountgroupa.shop; 
 b=1rHXtIrpgSmHQ+YFRvqWrn9KRQ386f8VYV26d5yRAo5oVlWkDkW0Z+m40pvoRwYl9N9lcMagmsH9
 i0A/INh4z3lr1hKRuNrJqomrbPqWFZ20h2DinkkmQfoaD19gx3S9czMJdxN3yzyUd7mbVJIPmEfx
 e+n9EbVKDRkocR34Xbg=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=chartardaccountgroupa.shop; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 bh=j5yFQckOpQXlq17fhKUVgBXDll8=;
 b=kUAOr/SsKMoEF9cZfFjiBbUVHPbuGL0fMl1Z4IEi3nvXr1EQOp6oi44+AuNUiEtSeO75GlSSwHCJ
 5HPB1E5cCc/oDFG9kfCb/z7XRgdMP3t7V/OfrzfEqFmbhC+D7a+WDE0nzhC8AZ3Ziccx4gIxjEpz
 Vrdbwf2pe8l5q0mG85g=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chartardaccountgroupa.shop
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chartardaccountgroupa.shop
 header.i=@chartardaccountgroupa.shop header.a=rsa-sha1 header.s=dkim
 header.b=kUAOr/Ss
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
Reply-To: mrliuzhenminunn@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkRlYXIgU2lyL01hZGFtCgpJIGFtIE1yLiBMaXUgWmhlbm1pbiAsdGhlIEVjb25vbWljIGFuZCBT
b2NpYWwgQWZmYWlycyBhbmQgdGhlIApIZWFkIEZvcmVpZ24gT3BlcmF0aW9ucyBVbml0ZWQgTmF0
aW9ucyAoVU4pIEZvcmVpZ24gQ3JlZGl0IApDb21taXNzaW9uIGFuZCBEZWJ0cyBTZXR0bGVtZW50
IFNlcnZpY2VzIE5ldyBZb3JrIFVuaXRlZCBTdGF0ZXMgCm9mIEFtZXJpY2EuCgoKVGhpcyBHcm91
cCBpcyBhbHNvIHJlc3BvbnNpYmxlIGZvciBpbnZlc3RpZ2F0aW5nIHRoZSBsZWdpdGltYWN5IApv
ZiB1bnBhaWQgY29udHJhY3QsIGluaGVyaXRhbmNlIGFuZCBsb3R0byB3aW5uaW5nIGNsYWltcyBi
eSAKQ29tcGFuaWVzIGFuZCBpbmRpdmlkdWFscyBhbmQgZGlyZWN0cyB0aGUgcGF5aW5nIGF1dGhv
cml0aWVzIAooYmFua3MpIHdvcmxkd2lkZSB0byBtYWtlIGltbWVkaWF0ZSBwYXltZW50IG9mIHZl
cmlmaWVkIGNsYWltcyB0byAKdGhlIGJlbmVmaWNpYXJpZXMgd2l0aG91dApmdXJ0aGVyIERlbGF5
LgoKCllvdSBhcmUgYmVpbmcgbGVnYWxseSBjb250YWN0ZWQgcmVnYXJkaW5nIHRoZSByZWxlYXNl
IG9mIHlvdXIgCmxvbmcgYXdhaXRlZCBmdW5kLiBBZnRlciBhIGRldGFpbGVkIHJldmlldyBvZiB5
b3VyIGZpbGUsIHRoZSBzdW0gCm9mIFVTMTUsNTAwLDAwMC4wMCAoRmlmdGVlbiBNaWxsaW9uIEZp
dmUgSHVuZHJlZCBUaG91c2FuZCBVbml0ZWQgClN0YXRlcyBEb2xsYXJzKSBoYXMgYmVlbiBhcHBy
b3ZlZCBpbiB5b3VyIGZhdm9yIGZvciBwYXltZW50IHZpYSAKSlAgTW9yZ2FuIENoYXNlIEJhbmsg
TmV3IFlvcmsuIEkgdGhlcmVmb3JlIHdpc2ggdG8gaW5mb3JtIHlvdSAKdGhhdCB5b3VyIHBheW1l
bnQgaXMgbm93IGJlaW5nIHByb2Nlc3NlZCBhbmQgd2lsbCBiZSByZWxlYXNlZCB0byAKeW91IGFz
IHNvb24gYXMgeW91IHJlc3BvbmQgdG8gdGhpcyBsZXR0ZXIKCgpCZWNhdXNlIHdlIGhhdmUgcmVj
ZWl2ZWQgYSBsZXR0ZXIvYXBwbGljYXRpb24gZnJvbSBvbmUgTXIuUnVuZ3N1biAKS2xpbmthZW8g
YSBjaXRpemVuIG9mIFRoYWlsYW5kLCBzYWlkIHRvIGJlIHlvdXIgbmV4dCBvZiBraW4gYW5kIAp0
aGF0IHRoZSBmdW5kcyBzaG91bGQgYmUgcmVkaXJlY3RlZCB0byB0aGUgYWNjb3VudCBnaXZlbiB0
byB1cyAKd2l0aCB0aGUgS3J1bmcgVGhhaSBCYW5rIFB1YmxpYyBDb21wYW55IExpbWl0ZWQgKFBM
QyksIEFjY291bnQgCk51bWJlcjoyNTMtMS0yMjM0NC0wLiwgQWNjb3VudCBOYW1lOiBNci5SdW5n
c3VuIEtsaW5rYWVvLCBTd2lmdCAKQ29kZTpLUlRIVEhCSy4KCgpQbGVhc2UgY29uZmlybSB0byB1
cyBpZiB3ZSBzaG91bGQgcHJvY2VlZCB3aXRoIHRoaXMgcGF5bWVudCBvZiAKdHJhbnNmZXJyaW5n
IHRoZSBzYWlkIGZ1bmQgdXJnZW50bHkgaW50byB0aGUgYWJvdmUgc3RhdGVkIGJhbmsgCmFjY291
bnQgb2YgeW91ciBuZXh0IG9mIGtpbiBhcyB5b3UgaGF2ZSBhdXRob3JpemVkIGJlZm9yZSBpdCBp
cyAKdG9vIGxhdGUKCgpBbmQgaWYgaW4gYW55IGV2ZW50IHlvdSBoYXZlIGEgY29udHJhcnkgdmll
dyBvciBvcGluaW9uIGFnYWluc3QgCnRoaXMgYXJyYW5nZW1lbnQgd2UgYXJlIG1ha2luZyBub3cg
dG8gd2lyZSB0aGlzIGFwcHJvdmVkIGZ1bmQgaW4gCnlvdXIgZmF2b3IgaW50byB5b3VyIG5leHQg
b2Yga2lu4oCZcyBiYW5rIGFjY291bnQgaW4gVGhhaWxhbmQgeW91IApzaG91bGQgbm90IGhlc2l0
YXRlIHRvIGxldCB1cyBrbm93IGltbWVkaWF0ZWx5IHlvdSByZWNlaXZlIHRoaXMgCm1lc3NhZ2Ug
c28gdGhhdCB3ZSBjYW4gc3RvcCB0aGlzIHBheW1lbnQgYW5kIHlvdSB3aWxsIGJlIHJlcXVpcmVk
IAp0byBzZW5kIHVzIHRoZSBiZWxvdyBzdGF0ZWQgaW5mb3JtYXRpb24gZm9yIGNvbmZpcm1hdGlv
biBhbmQgCnJlY29yZCBwdXJwb3NlcwoKCjEuIFlvdXIgRnVsbCBOYW1lOgoyLiBZb3VyIERpcmVj
dCBUZWxlcGhvbmUKMy4gRmF4IE51bWJlcgo0LiBZb3VyIFJlc2lkZW50aWFsIEFkZHJlc3M6CjUu
ICBZb3VyIEN1cnJlbnQgUmVjZWl2aW5nIEJhbmtpbmcgRGV0YWlscwoKClVwb24gdGhlIHJlY2Vp
cHQgb2YgdGhlc2UgcmVxdWVzdGVkIGluZm9ybWF0aW9uIGZyb20geW91LCBhIGZ1bmQgCmNsYWlt
IGlkZW50aWZpY2F0aW9uIGNvZGUgKENJQykgd2lsbCBiZSBpc3N1ZWQgdG8geW91IGJ5IHRoaXMg
Cm9mZmljZSB0aGF0IHdpbGwgZW5hYmxlIHlvdSB0byBzZWN1cmUvcHJvdGVjdCB5b3VyIGZ1bmRz
IGZyb20gdGhlIApoYW5kcyBvZiBjb3JydXB0IG9mZmljaWFscyB0aGF0IGFyZSB0cnlpbmcgdG8g
c3RlYWwgb3IgZGl2ZXJ0IAp5b3VyIGZ1bmRzIGludG8gYW4gdW5rbm93biBiYW5rIGFjY291bnQg
dG8geW91IHdpdGhvdXQgeW91ciAKYXV0aG9yaXphdGlvbgoKCldhaXRpbmcgZm9yIHlvdXIgc3dp
ZnQgcmVzcG9uc2UgYW5kIENvb3BlcmF0aW9uCgpZb3VycyBUcnVseQpNci4gTGl1IFpoZW5taW4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
