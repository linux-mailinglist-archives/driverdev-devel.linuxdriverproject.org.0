Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A16686DD4D5
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Apr 2023 10:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C59041571;
	Tue, 11 Apr 2023 08:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C59041571
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ImYwuVsK9Poz; Tue, 11 Apr 2023 08:11:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0D7D410DF;
	Tue, 11 Apr 2023 08:11:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0D7D410DF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFBA31C3BD9
 for <devel@linuxdriverproject.org>; Tue, 11 Apr 2023 08:11:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA7F282021
 for <devel@linuxdriverproject.org>; Tue, 11 Apr 2023 08:11:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA7F282021
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFTE2rMWq7YL for <devel@linuxdriverproject.org>;
 Tue, 11 Apr 2023 08:11:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F31B281FED
Received: from mail.odensebiz.pl (mail.odensebiz.pl [217.61.97.194])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F31B281FED
 for <devel@driverdev.osuosl.org>; Tue, 11 Apr 2023 08:11:25 +0000 (UTC)
Received: by mail.odensebiz.pl (Postfix, from userid 1002)
 id DFB3588A88; Tue, 11 Apr 2023 10:08:44 +0200 (CEST)
Received: by mail.odensebiz.pl for <devel@driverdev.osuosl.org>;
 Tue, 11 Apr 2023 08:06:39 GMT
Message-ID: <20230411084502-0.1.1u.d63j.0.i59ddb2j9g@odensebiz.pl>
Date: Tue, 11 Apr 2023 08:06:39 GMT
From: "Mateusz Suchocki" <mateusz.suchocki@odensebiz.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Nawi=C4=85zanie_wsp=C3=B3=C5=82pracy?=
X-Mailer: mail.odensebiz.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=odensebiz.pl; s=mail; 
 t=1681200524; bh=vfunix/zLj1icehG1l06EUpqhzKH5U21bbiVAw5QnaQ=;
 h=Date:From:To:Subject:From;
 b=fhGLeSWKk448mnmoXmeJqX7jzdkNd/rRyzdzxI2caHn70tHAEfN1bIq8VkMO5W00t
 SdpDyUIkEVhXo8vQ7in5MZu26rMO7LRjCCTqE4THQDC7XnXt6T3izaljqPlzk8oW63
 7vErNGmVdqqBQ+j0T9my9wmLkSc3s+RC7dGNu6i2WAfZz1PVqVWMH4eMcpwRPutJKj
 DEPO8r3mW9ezEORvpDvckYiGGLUlwpROE/1nLFxxhHq5FYLvdZFEGEkNzuHVMn1cZl
 r0cElv9ZCWDybX+N9HvOK3XeKlaQEsv3AeyK4ydviutzfAS2r17XtP7qCc3ARv6Abn
 m18DtPAAHsY6Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=odensebiz.pl header.i=@odensebiz.pl
 header.a=rsa-sha256 header.s=mail header.b=fhGLeSWK
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

U3phbm93bmkgUGHFhHN0d28sCgpGaXJtYSwga3TDs3LEhSBtYW0gcHJ6eWplbW5vxZvEhyByZXBy
ZXplbnRvd2HEhyBvZCA4IGxhdCB6YWptdWplIHNpxJkgd3NwYXJjaWVtIGR6aWHFgmHFhCBzcHJ6
ZWRhxbxvd3ljaC4gT3BlcnVqZW15IG5hIHN0eWt1IG1hcmtldGluZ3UgaSBzcHJ6ZWRhxbx5IGlu
aWNqdWrEhWMga29udGFrdCB6IHd5YnJhbsSFIHByemV6IHBhcnRuZXJhIGdydXDEhSBkb2NlbG93
xIUsIGFieSBwcnpla2F6YcSHIGRvIG9ic8WCdWdpIHNwcnplZGHFvG93ZWogZmlybXkgemFpbnRl
cmVzb3dhbmUgZGFsc3p5bWkgcm96bW93YW1pLCBwcmV6ZW50YWNqxIUgaSBvZmVydMSFLgoKS2HF
vGR5IHogd3lwcmFjb3dhbnljaCBrb250YWt0w7N3IHN0YWplIHNpxJkgbGVhZGVtIGRvcGllcm8g
cG8gd2VyeWZpa2FjamkgamVnbyBwb3RlbmNqYcWCdSBwcnpleiB6ZXNww7PFgiBzcHJ6ZWRhxbxv
d3kgbmFzemVnbyBwYXJ0bmVyYS4gU3ViaWVrdHl3bmEgb2NlbmEgcG90ZW5jamHFgnUgbmEgd3Nw
w7PFgnByYWPEmSBqZXN0IHBvZHN0YXfEhSBrd2FsaWZpa2FjamkgbGVhZGEuCgpKZcWbbGkgdyBj
aHdpbGkgb2JlY25laiBzdGF3aWFjaWUgUGHFhHN0d28gbmEgYWt0eXduZSBwb3N6dWtpd2FuaWUg
a2xpZW50YSB6IG1pxYLEhSBjaMSZY2nEhSBwb2R6aWVsxJkgc2nEmSB3acSZa3N6xIUgaWxvxZtj
acSFIHN6Y3plZ8OzxYLDs3cuCgoKUG96ZHJhd2lhbSBzZXJkZWN6bmllCk1hdGV1c3ogU3VjaG9j
a2kKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
