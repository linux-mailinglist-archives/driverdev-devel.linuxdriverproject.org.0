Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF1B78C020
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Aug 2023 10:21:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A0FE405AA;
	Tue, 29 Aug 2023 08:21:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A0FE405AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PVmWizlE-6bT; Tue, 29 Aug 2023 08:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3A3C40C39;
	Tue, 29 Aug 2023 08:21:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3A3C40C39
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E2A41BF29D
 for <devel@linuxdriverproject.org>; Tue, 29 Aug 2023 08:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA62040877
 for <devel@linuxdriverproject.org>; Tue, 29 Aug 2023 08:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA62040877
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GpjlTa5dkqfh for <devel@linuxdriverproject.org>;
 Tue, 29 Aug 2023 08:20:58 +0000 (UTC)
X-Greylist: delayed 326 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 29 Aug 2023 08:20:57 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D610040873
Received: from mail.pinedalecol.com (mail.pinedalecol.com [217.61.112.125])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D610040873
 for <devel@driverdev.osuosl.org>; Tue, 29 Aug 2023 08:20:57 +0000 (UTC)
Received: by mail.pinedalecol.com (Postfix, from userid 1002)
 id 7BA3482B30; Tue, 29 Aug 2023 10:15:23 +0200 (CEST)
Received: by mail.pinedalecol.com for <devel@driverdev.osuosl.org>;
 Tue, 29 Aug 2023 08:15:15 GMT
Message-ID: <20230829084500-0.1.29.2ks4.0.8rwkno9f4q@pinedalecol.com>
Date: Tue, 29 Aug 2023 08:15:15 GMT
From: "Karolina Hursowicz" <karolina.hursowicz@pinedalecol.com>
To: <devel@driverdev.osuosl.org>
Subject: Pracownik do prostych prac
X-Mailer: mail.pinedalecol.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=pinedalecol.com; s=mail; t=1693296929;
 bh=Cc/ZfKTm83NcG4kGgKRamGUr8KEiZk0jPL1SNWTN4V0=;
 h=Date:From:To:Subject:From;
 b=m4IxrGw3uLffe8PBKrHPxzT8qiNiaTtcXBRwSMLAdtAPNUOSYlyg7AnRi6YkqQeVU
 5he4/2TjLFpwQnolOZwjvgKs2yZvYC/ldopk8YoU6ZQkp7Uel18gDAHb9moTvuF2+6
 LRVXoOKmgZum6j6n5cCl0bDO58INDK9K0ll+vsHRJPq/cbAH+C+U0G9n55QaOr39xJ
 CeRCGg+Wvylt43R5+q1L1OJd5V9qN6kjqWm7ifLPQKf4rVfyJLgd92DUuVnDtLDczF
 1B/+mQJny06+EW3VHpP79w6PrVauuvSYlm3iFv2FMh8Eu2uPN+4zTVD7rflOiPhkc1
 r68WtY3AO/pGw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=pinedalecol.com header.i=@pinedalecol.com
 header.a=rsa-sha256 header.s=mail header.b=m4IxrGw3
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

RHppZcWEIGRvYnJ5LAoKY3p5IHBvdHJ6ZWJ1asSFIFBhxYRzdHdvIGRvZGF0a293eWNoIHByYWNv
d25pa8Ozdz8KCkpha28gbWnEmWR6eW5hcm9kb3dhIGFnZW5jamEgcmVrcnV0YWN5am5hIHogMTIg
bGV0bmltIGRvxZt3aWFkY3plbmllbSwgc3BlY2phbGl6dWplbXkgc2nEmSB3IHJla3J1dGFjamkg
cHJhY293bmlrw7N3IHogQXpqaSwgb2ZlcnVqxIVjIGtvbXBsZWtzb3dlIHVzxYJ1Z2kgdyB6YWty
ZXNpZSBsZWdhbGl6YWNqaSBwcmFjeSBjdWR6b3ppZW1jw7N3LCB3IHR5bSBwb3p5c2tpd2FuaWUg
a2FuZHlkYXTDs3cgKGFuZ2xvasSZenljem55Y2gpIHogTmVwYWx1LCBJbmRpaSwgQmFuZ2xhZGVz
enUsIEZpbGlwaW4gZG8gcHJhYyBzZXpvbm93eWNoLCBwcm9kdWtjeWpueWNoLCBtYWdhenlub3d5
Y2gsIHByemV0d8OzcmN6eWNoLCBjenlzdG/Fm2Npb3d5Y2ggaSBuYXByYXdjenljaCwgYSB0YWvF
vGUgeiB6YWtyZXN1IGhvdGVsYXJzdHdhLCBnYXN0cm9ub21paSwgc3p5Y2lhLgoKUm96bGljemFt
eSBzacSZIHBvIG9kYnljaXUgcHJ6ZXogcHJhY293bmlrYSB1c3RhbG9uZWdvIG9rcmVzdSBwcsOz
Ym5lZ28sIG9wxYJhdGEgamVzdCBqZWRub3Jhem93YS4gWmFwZXduaWFteSByw7N3bmllxbwgdHJh
bnNwb3J0IGRsYSBwcmFjb3duaWvDs3cgeiBBemppIGRvIFBvbHNraS4KWiBuYXN6ZWdvIHdzcGFy
Y2lhIGtvcnp5c3RhIG5pZW1hbCA5MDAgZmlybSwgeiBicmFuxbx5IHNwb8W8eXdjemVqLCBtacSZ
c25laiwgcHJvZHVrY3lqbmVqLCBwcnpldHfDs3JjemVqLCByb2xuaWN6ZWosIHRyYW5zcG9ydG93
ZWosIGJ1ZG93bGFuZWogaSB3aWVsdSBpbm55Y2gsIGt0w7NyZSBkemnEmWtpIHByYWNvd25pa29t
IHogQXpqaSB1enVwZcWCbmlhasSFIGJyYWtpIGthZHJvd2UsIHR5bSBzYW15bSB6eXNrdWrEhSB3
ecW8c3rEhSBwcm9kdWt0eXdub8WbxIcgaSBjacSFZ8WCb8WbxIcgcHJhY3kgcHJ6ZWRzacSZYmlv
cnN0d2EuICAKCkplxbxlbGkgY2hjaWVsaWJ5IFBhxYRzdHdvIHV6dXBlxYJuacSHIHN3w7NqIHpl
c3DDs8WCIG8gbWluLiAxMCBkb2RhdGtvd3ljaCBwcmFjb3duaWvDs3csIHByb3N6xJkgbyB3aWFk
b21vxZvEhy4KCgpQb3pkcmF3aWFtCkthcm9saW5hIEh1cnNvd2ljegpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
