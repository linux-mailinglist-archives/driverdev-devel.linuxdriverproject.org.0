Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F9C7B14E7
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Sep 2023 09:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5717D420F5;
	Thu, 28 Sep 2023 07:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5717D420F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nYCrvv7o3q-x; Thu, 28 Sep 2023 07:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F368D41DAE;
	Thu, 28 Sep 2023 07:31:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F368D41DAE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E89631BF263
 for <devel@linuxdriverproject.org>; Thu, 28 Sep 2023 07:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1813824EE
 for <devel@linuxdriverproject.org>; Thu, 28 Sep 2023 07:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1813824EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UCyWGw4nbEqD for <devel@linuxdriverproject.org>;
 Thu, 28 Sep 2023 07:31:10 +0000 (UTC)
Received: from mail.pinedalecol.com (mail.pinedalecol.com [217.61.112.125])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 874C28230D
 for <devel@driverdev.osuosl.org>; Thu, 28 Sep 2023 07:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 874C28230D
Received: by mail.pinedalecol.com (Postfix, from userid 1002)
 id A7B24829A3; Thu, 28 Sep 2023 09:31:06 +0200 (CEST)
Received: by mail.pinedalecol.com for <devel@driverdev.osuosl.org>;
 Thu, 28 Sep 2023 07:31:05 GMT
Message-ID: <20230928084500-0.1.2w.4ug7.0.jr4c15dxvb@pinedalecol.com>
Date: Thu, 28 Sep 2023 07:31:05 GMT
From: "Karolina Hursowicz" <karolina.hursowicz@pinedalecol.com>
To: <devel@driverdev.osuosl.org>
Subject: Pracownik do prostych prac
X-Mailer: mail.pinedalecol.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=pinedalecol.com; s=mail; t=1695886267;
 bh=Cc/ZfKTm83NcG4kGgKRamGUr8KEiZk0jPL1SNWTN4V0=;
 h=Date:From:To:Subject:From;
 b=BEmXd5d/Yz4MvX9iCaO3LCfW0LhPMz1SqQNQlzasAT75RG28w+V9KztLny6OA/XtV
 mefhezlvy2v71rtSXiVKS8MSfIiVwrcoxFQiXsCisKJcpHlGUnTWlFasKM/Ll/M8VQ
 XvihKjMwce3DUTv4X42izSXi+UW3b9F3hce0WWAHEQvzRqJrhNk5LWNZRitZghOZ3R
 EiimPJDOVyzRcsoXLqpl4b52FidGixLI2Kyz3ER1qK1docfm8J+NLqad+TR7zJe4KT
 VekHKHvyELXAQsF/lrJp5OOp5tiktyfOdiDdJrHFghtQ4MeYaTCrnMIWq5okWj1jDA
 mVlikvuATiQDw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=pinedalecol.com header.i=@pinedalecol.com
 header.a=rsa-sha256 header.s=mail header.b=BEmXd5d/
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
