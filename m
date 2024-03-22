Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4F0886921
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Mar 2024 10:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E204C40131;
	Fri, 22 Mar 2024 09:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBbKCdWrxrFl; Fri, 22 Mar 2024 09:24:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F275D4044C
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F275D4044C;
	Fri, 22 Mar 2024 09:24:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 988141BF388
 for <devel@linuxdriverproject.org>; Fri, 22 Mar 2024 09:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83D7941714
 for <devel@linuxdriverproject.org>; Fri, 22 Mar 2024 09:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w5i24RYZp-uN for <devel@linuxdriverproject.org>;
 Fri, 22 Mar 2024 09:24:30 +0000 (UTC)
X-Greylist: delayed 420 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 22 Mar 2024 09:24:29 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 08D904137D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08D904137D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=51.195.45.234;
 helo=mail.bizexpand.pl; envelope-from=agata.lorenc@bizexpand.pl;
 receiver=<UNKNOWN> 
Received: from mail.bizexpand.pl (mail.bizexpand.pl [51.195.45.234])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08D904137D
 for <devel@driverdev.osuosl.org>; Fri, 22 Mar 2024 09:24:29 +0000 (UTC)
Received: by mail.bizexpand.pl (Postfix, from userid 1002)
 id BE243AA07C; Fri, 22 Mar 2024 09:16:40 +0000 (UTC)
Received: by mail.bizexpand.pl for <devel@driverdev.osuosl.org>;
 Fri, 22 Mar 2024 09:16:09 GMT
Message-ID: <20240322074500-0.1.gn.1kmds.0.se2dii9mjk@bizexpand.pl>
Date: Fri, 22 Mar 2024 09:16:09 GMT
From: "Agata Lorenc" <agata.lorenc@bizexpand.pl>
To: <devel@driverdev.osuosl.org>
Subject: Nowa karta
X-Mailer: mail.bizexpand.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=bizexpand.pl; s=mail; 
 t=1711099046; bh=hy7OL951zzMc4+HXkALzt9LRZiawYsmWYUx9WMj5lrk=;
 h=Date:From:To:Subject:From;
 b=J9KAWNjpshx1OW3vfW1uJFQmawexdysA419mQaLOcjMoHSIAEbCpkJzcHXXvpEOc1
 BOob6j9LVulASjNYBgIOEg/0waySzMPtuwyN8W8ECdCdgg2WUYykvTYWYUV0EAVZpc
 YqxUqHcg5x0RoRZesOFcDJfFCXTbkTvcfjlfU8JyEj51HyJok0I8NJeXdXsXvnOubh
 bCgXhfUZNPQWPjvLnA/vLqRuEaSH3/hlEMF21FYBbQk9rIxDEjY+naNCmaaj9f8VRD
 GdNDu1RmhkP0ZmfhQaRp3lyW9VRRqsR3hUNOMk51EM6ayYm8pCTrjP3i8HPvkNgjsB
 IJHbrXO1B9I+w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=bizexpand.pl
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bizexpand.pl header.i=@bizexpand.pl header.a=rsa-sha256
 header.s=mail header.b=J9KAWNjp
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

RHppZcWEIGRvYnJ5LAoKY3p5IGtvcnp5c3RhbGkgUGHFhHN0d28ga2llZHnFmyB6IHByemVkcMWC
YWNvbmVqIGthcnR5IGx1bmNob3dlaj8KCkN6eSB3aWVkesSFIFBhxYRzdHdvLCDFvGUgYWt0dWFs
bmllIGlzdG5pZWplIG1vxbxsaXdvxZvEhyB6d29sbmllbmlhIHogb3DFgmF0IFpVUyBhxbwgZG8g
NDUwIHrFgiBuYSBrYcW8ZGVnbyBwcmFjb3duaWthPwoKRG9maW5hbnNvd2FuaWUgcG9zacWCa8Oz
dyBqZXN0IGtvcnp5c3RuZSBkbGEgb2J1IHN0cm9uLiBQcmFjb3duaWN5IG1vZ8SFIHRha8SFIGth
cnTEhSB6YXDFgmFjacSHIHphIHBvc2nFgmtpIHcgcmVzdGF1cmFjamFjaCwgeiBkb3N0YXfEhSBv
bmxpbmUsIGNhdGVyaW5nIHB1ZGXFgmtvd3ksIGN6eSBwb2RjemFzIHpha3Vww7N3IHcgbWFya2Vj
aWUuIEplZG5vY3plxZtuaWUga2FydHkgbHVuY2hvd2Ugc8SFIGRvc2tvbmHFgnltIG5hcnrEmWR6
aWVtIG1vdHl3YWN5am55bSBkbGEgemVzcG/FgsOzdyBwcmFjb3duaWN6eWNoLgoKVyB0ZW4gc3Bv
c8OzYiB6YWRiYWrEhSBQYcWEc3R3byBvIHpkcm93aWUgaSBkb2JyZSBzYW1vcG9jenVjaWUgc3dv
amVqIGthZHJ5LCB3ZHJhxbxhasSFYyByb3p3acSFemFuaWUsIGt0w7NyZSBwb3p5dHl3bmllIHdw
xYJ5bmllIG5hIGVmZWt0eXdub8WbxIcgYml6bmVzdS4KCkN6eSBtb2fEmSB6YXByZXplbnRvd2HE
hyBzcG9zw7NiLCB3IGpha2kgbW/FvG5hIHd5a29yenlzdGHEhyB0ZWdvIHR5cHUgYmVuZWZpdCB3
IGZpcm1pZT8KCgpQb3pkcmF3aWFtLApBZ2F0YSBMb3JlbmMKU2VuaW9yIEhSIE1hbmFnZXIKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
