Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E0293EDA7
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2024 08:49:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8C3740252;
	Mon, 29 Jul 2024 06:49:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WpMsP_tgKx-K; Mon, 29 Jul 2024 06:49:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C14940263
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C14940263;
	Mon, 29 Jul 2024 06:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DBA381BF3E1
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2024 06:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C7AD48115C
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2024 06:49:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C4wshzHI7_Yx for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2024 06:49:50 +0000 (UTC)
X-Greylist: delayed 538 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 29 Jul 2024 06:49:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B6849810FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6849810FB
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.122.186.212;
 helo=mail.hfzq.co.uk; envelope-from=support5@hfzq.co.uk; receiver=<UNKNOWN> 
Received: from mail.hfzq.co.uk (unknown [134.122.186.212])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B6849810FB
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2024 06:49:49 +0000 (UTC)
Received: from mail.hfzq.co.uk (mail.hfzq.co.uk [127.0.0.1])
 by mail.hfzq.co.uk (Postfix) with ESMTP id 4WXTHY6LMSz3S2K
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2024 06:39:53 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.hfzq.co.uk
Received: from mail.hfzq.co.uk ([127.0.0.1])
 by mail.hfzq.co.uk (mail.hfzq.co.uk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2Bu6FwcItx_O for <devel@driverdev.osuosl.org>;
 Mon, 29 Jul 2024 06:39:46 +0000 (UTC)
Received: from headahce.com (unknown [8.218.26.69])
 by mail.hfzq.co.uk (Postfix) with ESMTPSA id 4WXCy65Jx2z3S2v
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2024 20:38:54 +0000 (UTC)
Message-ID: <3f5291ef978a4f944e3819c30942a53a@hotespa.net>
From: =?utf-8?B?44Ko44Od44K544Kr44O844OJ?= <info@hotespa.net>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQ44Ko44Od44K544Kr44O844OJ44CR44GU5Yip55So56K6?=
 =?utf-8?B?6KqN44Gu44GK6aGY44GE?=
Date: Mon, 29 Jul 2024 04:39:45 +0800
X-Priority: 3
X-Mailer: Alimail-Mailagent191
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hfzq.co.uk; h=
 content-transfer-encoding:content-type:mime-version:x-mailer
 :date:subject:to:from:message-id; s=dkim; t=1722235186; x=
 1724827187; bh=CsQWAGk/Sw6rzMIE/GSL5COGQM+07mdH1rCLnwfSzkc=; b=E
 RiiVbFYkPLFJfg/Ub+TiUb3nAgrmQITqM0BYwiDz3dM1ZApgN0zjnmbcN38a3rAw
 FTRA6Zzc3AyL047TPT9UcCtgPid2thn76q7d5dgBbTtirvOj3VSVud/XzY7yRdra
 nLMZpy5MrPT2N1Glsuu1e1fMvm/VxCOGWKMKd/l6kXPZmLZNh06Zi+8ij4T2ITD8
 ZNUF3otANy+UDgDAxPFexvtLuWFFgU2gnb+KuwfSQBu3BObr9Nz4EfHo3h5dh/Ep
 VgKh7B6ubWPjKBryg+Yk3mq8OwiLA+rqzM3xyEIaIsmWvurx+l8+suW9Jp5FvO7n
 hgYLcblFQIP/4KEuJ2tsw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=hotespa.net
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=hfzq.co.uk header.i=@hfzq.co.uk header.a=rsa-sha256
 header.s=dkim header.b=ERiiVbFY
X-Mailman-Original-Authentication-Results: mail.hfzq.co.uk (amavisd-new);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=hfzq.co.uk
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

44GE44Gk44KC44Ko44Od44K544Kr44O844OJ44KS44GU5Yip55So6aCC44GN44GC44KK44GM44Go
44GG44GU44GW44GE44G+44GZ44CCCuOCq+ODvOODieOBjOOBlOWIqeeUqOOBhOOBn+OBoOOBkeOB
quOBi+OBo+OBn+OBiuWPluW8leOBjOOBlOOBluOBhOOBvuOBl+OBn+OBruOBp+OBiuefpeOCieOB
m+OBhOOBn+OBl+OBvuOBmeOAggoK4peH5Yip55So44Kr44O844OJ77ya44Ko44Od44K544Kr44O8
44OJCuKXh+WIqeeUqOaXpe+8mjIwMjQvMDcvMjkK4peH5Yip55So5YWI77ya77y077yv77y577yv
77y077yh77y3772B772M772M772F772U44OB44Oj44O844K4CuKXh+WIqeeUqOmHkemhje+8mjUw
LDAwMOWGhgoK5LiN5q2j5Yip55So5qSc55+l44K344K544OG44Og44Gn56ys5LiJ6ICF44Gr44KI
44KL5LiN5q2j44Gu5Y+v6IO95oCn44KS5qSc55+l44GX44Gf44Gf44KB44CB5LiK6KiY5Y+W5byV
44KS5Yi26ZmQ44GV44Gb44Gm44GE44Gf44Gg44GN44G+44GX44Gf44CCCuS7peS4i+OBruWbnuet
lOODmuODvOOCuOOCiOOCiuOBlOWIqeeUqOWGheWuueOBrueiuuiqjeOBq+OBlOWNlOWKm+OBj+OB
oOOBleOBhOOAggoK4pa85Zue562U44Oa44O844K444Gv44GT44Gh44KJ77yI5omA6KaB5pmC6ZaT
77yaMzDnp5LvvIkKaHR0cHM6Ly9wZXRlcmdhbGxvLmNvbS9hcmtlcnkucGhwP2Vwb3M9bG9naW4w
NTQzCgrkuI3kvr/jgajjgZTlv4PphY3jgpLjgYrjgYvjgZHjgZfjgb7jgZfjgaboqqDjgavnlLPj
gZfoqLPjgZTjgZbjgYTjgb7jgZvjgpPjgYzjgIEK5L2V44Go44Ge44GU55CG6Kej5piT44KK44Gf
44GP44GK6aGY44GE55Sz44GX44GC44GS44G+44GZCgrjgJDjgZTmnKzkurrjgZXjgb7jga7jgZTl
iKnnlKjjga7loLTlkIjjgJEK44GU5Yip55So5Yi26ZmQ44KS6Kej6Zmk44GX44G+44GZ44CCCu+8
iuS4iuiomOWPluW8leOBr+S4jeaIkOeri+OBruOBn+OCgeOAgeWIqeeUqOWItumZkOino+mZpOW+
jOOBq+WGjeaxuua4iOOBjOW/heimgeOBp+OBmeOAggrjgJDjgZTliKnnlKjjgavopprjgYjjgYzj
garjgYTloLTlkIjjgJEg44Kr44O844OJ44Gu5YGc5q2i77yI54Sh5Yq55YyW77yJ44O75YaN55m6
6KGM5omL57aa44GN44G46YCy44G/44G+44GZ44CCCu+8iuOBlOWIqeeUqOeiuuiqjeOBruWbnuet
lOaZguOBq+WAi+S6uuaDheWgseOCkuWFpeWKm+OBhOOBn+OBoOOBj+OBk+OBqOOBr+OBlOOBluOB
hOOBvuOBm+OCkwrigLvkuIDpg6jjgIHnirbms4HjgoTjgqvjg7zjg4njga7nqK7poZ7jgavjgojj
gaPjgablho3nmbrooYzmiYvntprjgY3jgYzlrozkuobjgZfjgarjgYTloLTlkIjjgYzjgZTjgZbj
gYTjgb7jgZnjgIIK77yK44GZ44Gn44GrU01T562J44Gn44GU5Zue562U44GE44Gf44Gg44GE44Gf
5aC05ZCI44Gv44CB5pys44Oh44O844Or44GL44KJ44Gu44GU5Zue562U44Gv5LiN6KaB44Gn44GZ
44CCCuKAu+OBk+OBruODoeODvOODq+OCouODieODrOOCueOBr+mAgeS/oeWwgueUqOOBp+OBmeOA
guOBlOi/lOS/oeOBq+WbnuetlOOBp+OBjeOBvuOBm+OCk+OAggotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCuKWoOeZuuihjOiAheKWoArjgqjjg53jgrnjgqvjg7zjg4nmoKrlvI/kvJrnpL4K5p2x
5Lqs6YO95Lit6YeO5Yy65Lit6YeONC0zLTIK4oC75pys44Oh44O844Or44Gv6YeN6KaB44Gq44GK
55+l44KJ44Gb44Gu44Gf44KB44CB44Oh44O844Or6YWN5L+h44KS44CM5ZCm44CN44Gr44GV44KM
44Gm44GE44KL5pa544Gr44KC6YCB5L+h44GX44Gm44GK44KK44G+44GZ44CCCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
