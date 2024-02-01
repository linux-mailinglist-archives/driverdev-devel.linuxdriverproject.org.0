Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5259845392
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Feb 2024 10:16:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 245128465E;
	Thu,  1 Feb 2024 09:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 245128465E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id obxGe66kNycV; Thu,  1 Feb 2024 09:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07DD384649;
	Thu,  1 Feb 2024 09:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07DD384649
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F17721BF31A
 for <devel@linuxdriverproject.org>; Thu,  1 Feb 2024 09:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5AB684678
 for <devel@linuxdriverproject.org>; Thu,  1 Feb 2024 09:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5AB684678
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u1K5MfyhrCmi for <devel@linuxdriverproject.org>;
 Thu,  1 Feb 2024 09:16:04 +0000 (UTC)
Received: from mail.centiscomp.com (mail.centiscomp.com [135.125.203.239])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FB058465E
 for <devel@linuxdriverproject.org>; Thu,  1 Feb 2024 09:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FB058465E
Received: by mail.centiscomp.com (Postfix, from userid 1002)
 id 24787A2D9D; Thu,  1 Feb 2024 09:15:52 +0000 (UTC)
Received: by mail.centiscomp.com for <devel@linuxdriverproject.org>;
 Thu,  1 Feb 2024 09:15:44 GMT
Message-ID: <20240201074500-0.1.bn.14y3d.0.53yhkjbe6c@centiscomp.com>
Date: Thu,  1 Feb 2024 09:15:44 GMT
From: =?UTF-8?Q?"Stanislav_Kov=C3=A1=C4=8D"?= <stanislav.kovac@centiscomp.com>
To: <devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?D=C3=ADly_pro_sportovn=C3=AD_vozy?=
X-Mailer: mail.centiscomp.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=centiscomp.com; s=mail; t=1706778962;
 bh=hK32N63EXg5L0mDBhcLqO7LT0yXl3sNSlyZA5k03kP0=;
 h=Date:From:To:Subject:From;
 b=XgkdWBOf3/cBora6fY8I1KssjsD1YJz0jgSJpKV3eHSn07oy1vmZ3miV66KR7DKJ+
 gdjkMxMNQ1wBtE91cZdyKPnkkoc8wFgQkvUXH67kI5kEld9TJ8+kv2NauVLulQnmG5
 WncilLO5/POveE6mLQ3lNK7k1lcZ1wb2U/W3im7G+1EVoBR7WQ5lfZRJhqrVvRfl3k
 6La628h9oVi/TgRz/n/KQtg8GxifH5OMoN4AcwKI8Gzx+8ZIIdNzOwJsF8YqeQCQmU
 6asmYt2PoeDC1xGb+DabJtB6yfxiYLvD2JpZbVGHqW9RYymycMNhtymdB6DpNVSTJO
 7vtXxi2Ti+NIA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=centiscomp.com header.i=@centiscomp.com
 header.a=rsa-sha256 header.s=mail header.b=XgkdWBOf
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

QWhvaiEKCkpzbWUgdMO9bSBuYWTFoWVuY8WvIG1vdG9yc3BvcnR1IGEgdHVuaW5ndSwga3RlxZnD
rSBzZSBha3Rpdm7EmyBwb2TDrWxlasOtIG5hIHByb3N0xZllZMOtIGRyaWZ0b3bDoW7DrS4KCk5h
xaFlIHJvenPDoWhsw6kgdGVjaG5pY2vDqSB6ZHJvamUgYSB6a3XFoWVub3N0aSBuw6FtIHVtb8W+
xYh1asOtIG5hdnJob3ZhdCBhIHZ5csOhYsSbdCBuZWprdmFsaXRuxJtqxaHDrSBrb3ZvdsOpIGTD
rWx5IHBybyBzcG9ydG92bsOtIHZvenksIHplam3DqW5hIEJNVy4KCk9icmFjw61tIHNlIG5hIFbD
oXMsIHByb3Rvxb5lIHNlIHphbcSbxZl1amVtZSBuYSBvYnNsdWh1IHZlbGtvb2JjaG9kbsOtY2gg
esOha2F6bsOta8WvLCBjb8W+IG7DoW0gdW1vxb7FiHVqZSBuYWLDrXpldCBrb25rdXJlbmNlc2No
b3Buw6kgY2VueS4KCkRvc3TDoXbDoW1lIGRvdGF6eSBvaGxlZG7EmyBuw6FrdXB1IG5hxaFpY2gg
cHJvZHVrdMWvIHogY2Vsw6lobyBzdsSbdGEuIE5hxaFlIHBvZG3DrW5reSB1bW/FvsWIdWrDrSBw
YXJ0bmVyxa9tIGRvc2Fob3ZhdCB2eXNva8O9Y2ggbWFyxb7DrSBuYSBtZXppbsOhcm9kbsOtY2gg
dHJ6w61jaC4KCk3Fr8W+ZW1lIHDFmWVkc3Rhdml0IG5hxaFlIHBvcnRmb2xpbz8KCgpTIHDFmcOh
dGVsc2vDvW0gcG96ZHJhdmVtClN0YW5pc2xhdiBLb3bDocSNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
