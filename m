Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E70579E13A
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Sep 2023 09:55:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B157541AEF;
	Wed, 13 Sep 2023 07:55:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B157541AEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1l6sFynGfTHl; Wed, 13 Sep 2023 07:55:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73092409AB;
	Wed, 13 Sep 2023 07:55:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73092409AB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31E711BF3B9
 for <devel@linuxdriverproject.org>; Wed, 13 Sep 2023 07:55:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 187C960A9D
 for <devel@linuxdriverproject.org>; Wed, 13 Sep 2023 07:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 187C960A9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j2Q48cZYk3CZ for <devel@linuxdriverproject.org>;
 Wed, 13 Sep 2023 07:55:42 +0000 (UTC)
X-Greylist: delayed 559 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 13 Sep 2023 07:55:42 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5AD660AA0
Received: from mail.blairton.pl (mail.blairton.pl [141.94.250.72])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5AD660AA0
 for <devel@driverdev.osuosl.org>; Wed, 13 Sep 2023 07:55:42 +0000 (UTC)
Received: by mail.blairton.pl (Postfix, from userid 1002)
 id 151C2A36EA; Wed, 13 Sep 2023 07:45:58 +0000 (UTC)
Received: by mail.blairton.pl for <devel@driverdev.osuosl.org>;
 Wed, 13 Sep 2023 07:45:54 GMT
Message-ID: <20230913064500-0.1.c0.g7ec.0.ycr7wlhq77@blairton.pl>
Date: Wed, 13 Sep 2023 07:45:54 GMT
From: =?UTF-8?Q?"Damian_Kwaczy=C5=84ski"?= <damian.kwaczynski@blairton.pl>
To: <devel@driverdev.osuosl.org>
Subject: Przechowywanie towaru w Gliwicach 
X-Mailer: mail.blairton.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=blairton.pl; s=mail; 
 t=1694591165; bh=SQg0cr+HABfTdkcZROAFSg8TR3/oubMNjysx8YYpX80=;
 h=Date:From:To:Subject:From;
 b=gX4g1PP9kbkhmzqYG0cegmZlPcCOJbJk3YS7r6hNtFHO2vIPoCx4q814lUwuTHP0r
 UpAHs427kjNc78AA3XuzvZuYnR93LrY2UQMdW6cCh/ESguMvVbHS/HghfLc77GtbS7
 eTUvbr9e7JiJZMrCNRZtMvXaCiBma/MYD3TAov41twxKkZy7mpNtYJ7vAPoVC62RBM
 LbOHhYhPM8T0bEc9viPKB4kY1pxyQMDswcKyE2q9cbaX9sjbAgpzSGlsl4DnhRrQW0
 OjLULnZwzdczQoIh/GNUABcbmZnaNoERdyhGe0E+w32H9u/rmbW0wYitneHVIaZvuB
 teJYApzARyEmA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blairton.pl header.i=@blairton.pl
 header.a=rsa-sha256 header.s=mail header.b=gX4g1PP9
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

RHppZcWEIGRvYnJ5LAoKY3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClphcGV3bmlhbXkgb2JzxYJ1Z8SZIHRyYW5zcG9ydG93xIUgbmEg
dHJhc2llIFBvbHNrYSAod29qLiDFm2zEhXNraWUpIC0gV8WCb2NoeSBpIFfFgm9jaHkgLSBQb2xz
a2EgKHdvai4gxZtsxIVza2llKSBvYmVqbXVqxIVjxIUgb2RiacOzciwgdHJhbnNwb3J0IChjYcWC
b3BvamF6ZG93eSwgY3rEmcWbY2lvd3kgb3JheiBkcm9ibmljb3d5KSwgb2RwcmF3eSBjZWxuZSBv
cmF6IG1hZ2F6eW5vd2FuaWUgd3JheiB6IHVzxYJ1Z2FtaSBkb2RhbnltaS4gCgpaIG5hc3p5Y2gg
cm96d2nEhXphxYQgdHJhbnNwb3J0b3d5Y2gga29yenlzdGEgd2llbGUgbWFyZWsgdyBQb2xzY2Us
IHp5c2t1asSFYyBjacSFZ8WCb8WbxIcgxYJhxYRjdWNoYSBkb3N0YXcsIGpha2/Fm8SHIG9wZXJh
Y3lqbsSFIHBvdHdpZXJkem9uxIUgd2llbG9tYSByZWZlcmVuY2phbWksIG9wdHltYWxpemFjasSZ
IGtvc3p0w7N3IGkgc2tyw7Njb255IGN6YXMgdHJhbnp5dHUuCgpCxJlkxJkgd2R6acSZY3pueSB6
YSBpbmZvcm1hY2rEmSBjenkgbW/FvGVteSBwb3Jvem1hd2lhxIcuCgoKUG96ZHJhd2lhbQpEYW1p
YW4gS3dhY3p5xYRza2kKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
