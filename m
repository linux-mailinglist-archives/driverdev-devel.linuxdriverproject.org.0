Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622A667DF92
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Jan 2023 09:57:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B97E54016D;
	Fri, 27 Jan 2023 08:57:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B97E54016D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vnse8cDhPn0a; Fri, 27 Jan 2023 08:57:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8ABF040128;
	Fri, 27 Jan 2023 08:57:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8ABF040128
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B57F1BF349
 for <devel@linuxdriverproject.org>; Fri, 27 Jan 2023 08:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0543B61217
 for <devel@linuxdriverproject.org>; Fri, 27 Jan 2023 08:57:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0543B61217
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U0CwZ__imcyf for <devel@linuxdriverproject.org>;
 Fri, 27 Jan 2023 08:57:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F41E61215
Received: from mail.crawnon.pl (mail.crawnon.pl [51.68.198.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F41E61215
 for <devel@driverdev.osuosl.org>; Fri, 27 Jan 2023 08:57:46 +0000 (UTC)
Received: by mail.crawnon.pl (Postfix, from userid 1002)
 id 1187CA6240; Fri, 27 Jan 2023 08:56:45 +0000 (UTC)
Received: by mail.crawnon.pl for <devel@driverdev.osuosl.org>;
 Fri, 27 Jan 2023 08:56:07 GMT
Message-ID: <20230127074500-0.1.8t.f13i.0.bdwqab6qpg@crawnon.pl>
Date: Fri, 27 Jan 2023 08:56:07 GMT
From: =?UTF-8?Q?"Miko=C5=82aj_Fiodorczyk"?= <mikolaj.fiodorczyk@crawnon.pl>
To: <devel@driverdev.osuosl.org>
Subject: Fotowoltaika - nowe warunki
X-Mailer: mail.crawnon.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=crawnon.pl; s=mail; 
 t=1674809864; bh=C5hX24svv/9/TME4wPCHfYjl17BCtmuxEd1i9B4zdYs=;
 h=Date:From:To:Subject:From;
 b=YznNmPZEEbZFvpcHeUAdtQm+Gi5EQUeHh/LvVcHV6O2hrTSQIWABtSaS3PHSeBvYr
 bR7haQscjEohgXbW1gJ4MagjuWb77sopDYD5MBYxAO3Vis5KCsvTwjLyBzNC2wq3Pu
 6cn4Qcy9LzwdUvOWZnBNMbDPK87rW2QixV8OUrhSjkPXGDN7Gtv154s6GwfzuQDlWh
 Li+qSngvk/MDKRxxing162/oxESavsZkSY6Pce/iIFeqFCAgRxuSjyouIidwt1p2xM
 HMHKSpZGi3Z7OvXZGu3BjeAQ+acyKeczMYP6RhskSC3zhFwWTPiQy8rynKe7z6JKsD
 M43MBnB9xwwpw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=crawnon.pl header.i=@crawnon.pl
 header.a=rsa-sha256 header.s=mail header.b=YznNmPZE
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

RHppZcWEIGRvYnJ5LAoKY2hjaWHFgmJ5bSBwb2luZm9ybW93YcSHLCBpxbwgbW9nxIUgUGHFhHN0
d28gdXp5c2thxIcgZG9maW5hbnNvd2FuaWUgbmEgc3lzdGVteSBmb3Rvd29sdGFpY3puZSB3IHJh
bWFjaCBub3dlaiBlZHljamkgcHJvZ3JhbXUgTcOzaiBQcsSFZC4KClByb2dyYW0gemFwZXduaWEg
NjAwMCB6xYIgZG9maW5hbnNvd2FuaWEgbmEgaW5zdGFsYWNqxJkgcGFuZWxpIGkgMTYgMDAwIHrF
giBuYSBtYWdhenluIGVuZXJnaWksIG5pxbxzemUgY2VuIHByxIVkdSBpIG1vxbxsaXdvxZvEhyBv
ZGxpY3plbmlhIGtvc3p0w7N3IHp3acSFemFueWNoIHogaW5zdGFsYWNqxIUgZm90b3dvbHRhaWtp
IHcgcmFtYWNoIHJvemxpY3plbmlhIFBJVCAodHp3LiB1bGdhIHRlcm1vbW9kZXJuaXphY3lqbmEp
LgoKQ3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIHdzdMSZcG7EhSByb3ptb3fEmSB3IHR5bSB0
ZW1hY2llPwoKClBvemRyYXdpYW0sCk1pa2/FgmFqIEZpb2RvcmN6eWsKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
