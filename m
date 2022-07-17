Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 491D5577526
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 Jul 2022 11:13:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D46B360B19;
	Sun, 17 Jul 2022 09:13:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D46B360B19
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 660UlXeZU6ah; Sun, 17 Jul 2022 09:13:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 788C260B04;
	Sun, 17 Jul 2022 09:13:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 788C260B04
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1BB8E1BF5AD
 for <devel@linuxdriverproject.org>; Sun, 17 Jul 2022 09:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1E9A60BCE
 for <devel@linuxdriverproject.org>; Sun, 17 Jul 2022 09:13:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1E9A60BCE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qZLJZc_7stIW for <devel@linuxdriverproject.org>;
 Sun, 17 Jul 2022 09:13:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA15C60B19
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA15C60B19
 for <devel@driverdev.osuosl.org>; Sun, 17 Jul 2022 09:13:12 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 89-20020a17090a09e200b001ef7638e536so15464244pjo.3
 for <devel@driverdev.osuosl.org>; Sun, 17 Jul 2022 02:13:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=9RLxIxoNm43+oTdZpbPPv+M+PZ2ObpArcvT7p0VWrUw=;
 b=sQwo2DfIRCDLWAqtgKrZWUzVPiI05T9i/OOshZJBrhvpKcJj2mmQpR4MoCQ42kYJxK
 zmCHk0Kp62b1N30CpSFDwY1tAgz/vrLIiHiDK1UM+4Z6sgCDTb6a5gS62HJ8mMdY2ijX
 /LuJPmLlqgITA9QubBBiDBELISV8Ak/3Qc/WNZdedkNWYokaXHIHgZW8zyM6IfRFZFNx
 lp6eGuY23S42sNW4T4frMhjKmuAKuBJbva/D1i10qaejW3zEHrTNDDcvVzMEamlEY7vK
 hryeHf1lB3sDDF0FFA9DeOqMEPSyNi2ru2vGSjImnxiRTK36VdLV/MiATjY9TGUuwLj4
 4Hgw==
X-Gm-Message-State: AJIora97w6u2iZTXXdCzb7a0wFoBTjD5MWA0ysRbqWIYsT7Tl+pMZ9gs
 pBzZhGphpvJAgHh9+fn8SB4cdu+JHWWvcIImJig=
X-Google-Smtp-Source: AGRyM1tNC6MTSmMcvEQJgUKMc4jIKiXHrbi/UUk1cJCsoDN5vIUGH6C1R3qK6yHn9LcZxapdzxrfFx/yBro/KGPIX1M=
X-Received: by 2002:a17:902:d2d1:b0:16c:43fb:a363 with SMTP id
 n17-20020a170902d2d100b0016c43fba363mr22176372plc.8.1658049192152; Sun, 17
 Jul 2022 02:13:12 -0700 (PDT)
MIME-Version: 1.0
From: "Mrs. Rita Dennis Kozacek" <a001xxza@gmail.com>
Date: Sun, 17 Jul 2022 02:13:05 -0700
Message-ID: <CAFM7fN5ngqZK-hPeKNuGan7a1KDxiq99g2Ta3bCmvCxYwB_UNA@mail.gmail.com>
Subject: Greetings My Beloved,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=9RLxIxoNm43+oTdZpbPPv+M+PZ2ObpArcvT7p0VWrUw=;
 b=XM1d/fFEVY2WzWJ0QaO8KBvKbfG085CzvsNxtaHV9FclR2gYlYAGkxnUbdsOclU3sd
 nKhRY9PMI8hT7FOdVDOMPBakGr+L7XJz6zxoaMsrDxKlnMEYIQLTjlrq+xE73MM4iKOd
 MvZbUsWYB67cttM1+TytOBNy+HMvC4Os5MB50ATy56dgKgAqojp9MXJiR7C/A2gemZWg
 3u3ZTRCaxLp4ZgcIfW4rN90LP0/GBDmSIf6RBrqbnAOstAUVJJkle7y22/jGlYxH69I3
 QaB2+Vdh2HQOXWZzAEJ2GbOU/yKm5LyYcY595vO4zEpN0Or59sFi4XJTIhYzF14v9DvL
 8Wsg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=XM1d/fFE
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
Reply-To: ao-anya@bol.com.br
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings My Beloved,
I'm Mrs. Rita Dennis Kozacek from the country of USA, I lost my
husband for almost 3 years now and I have been living with this pain
till date.Dennis  Kozacek, is the name of my husband who Died in a
plane crash on 19th April 2019. Here the link to the story if you wish
to confirm my info:https://www.usnews.com/news/best-states/washington/articles/2019-05-01/ntsb-probes-crash-of-plane-in-southwest-washington

We are hospitable people and decided to serve mankind to the best of
our ability. Since the death of my children (Gerard St. Churchill and
Yvette St. Churchill), I have lived with the memories, fighting
effortlessly to lead a normal life but all to no avail.


Presently,I'm in hospital at 744 Design Ct #2112 Chula Vista,CA 91911
United States I suffered psychologically and shortly was diagnosed
with a Cancer.

I write to you, having sourced your address from a database in my late
children's internet dozier after fervent prayers. Before their death,
my family had a joint account and deposited a sum of $5.6 Million and
in contrast to how family members & friends have completely treated me
during horrible-moment in my life.

I decided to reach out to a total stranger in your person. I decided
to WILL my inheritance of $5.6 Million to you and your family. I need
an individual that will utilize this fund, These are the wishes of a
dying woman. hence my decision as I do not have a child to take over
my inheritance.

Please I am sorry if this my message comes as sudden information to you beloved.

I await your immediate response .

Kinds Regards,

Mrs. Rita Dennis Kozacek
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
