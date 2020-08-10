Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1FE24061C
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Aug 2020 14:45:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEA8888B81;
	Mon, 10 Aug 2020 12:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85kE1+j+hPeQ; Mon, 10 Aug 2020 12:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 57A3388098;
	Mon, 10 Aug 2020 12:45:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BF871BF3E9
 for <devel@linuxdriverproject.org>; Mon, 10 Aug 2020 12:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6A4FB20C92
 for <devel@linuxdriverproject.org>; Mon, 10 Aug 2020 12:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RD0lxHgJNAgt for <devel@linuxdriverproject.org>;
 Mon, 10 Aug 2020 12:45:24 +0000 (UTC)
X-Greylist: delayed 00:30:06 by SQLgrey-1.7.6
Received: from sonic306-1.consmr.mail.bf2.yahoo.com
 (sonic306-1.consmr.mail.bf2.yahoo.com [74.6.132.40])
 by silver.osuosl.org (Postfix) with ESMTPS id 13C0620501
 for <devel@driverdev.osuosl.org>; Mon, 10 Aug 2020 12:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1597063523; bh=SjUAWvQquMKFGU6xPfQVSvtqoH1Blw2fKcs14Z7t024=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=C8+AXt7hSVwe55m46rQ7XODHd/B9wmqYREouNHtnq2sj1GpXJRU4D4TyRru32YUkUT/pDDcQ0353qF74RoUOVE9MsIwLxBGgtw1mIoL9rY4PDvBDmi+4QKFcg/DWTdVjlbwAbdFSlF05WUJHicbaWUU5lCeLFtBq80Uwq/0y44Dq187Xe+wVkb+eGnA3TyWlHtJ6uRPIGqkfiSw9lro3pTpY7VhNt85gd2y9Ih2lj5cRqSdlNQpWqtnxNPKGjf//TgPr8OIdnAq0SVvmmI6EeRZAJrqzBpQA4WVVlGJXq79SBYq4XtRcCIQXXAVNIXyDUehZy+YgfPgBxdB6aH3SNQ==
X-YMail-OSG: Fxb_6L0VM1nY7WAJMQOImnhjtVgzPQrBY17upfBS3Gud4S0FkVl60BVieEF90Kj
 UmXofMpDKzroES22dFWt2bjcwZMP1ouXKM.hkyV5i4bNA9UdItIf4FG4obJ856ON6p7jaBOhKBF9
 FsvXcMSB0GzZFOmRoTw7kYN2ciQxX2NbzhTffzaWP.DS5TXVbNcpw04ijOdccpOgrmQWo5y0E3u4
 HIHhpgxmJVTga3c.ahXUFRfW1OJdQcYhGZ40w.7mEPf3Zy_NQgrf9weDWPCke7a3L.wySNgxNXHT
 TXtKAx8UuHb6jpc8KwDlEAmFmkp3e3W3gf4KR75mUoTKqkDIkj1O5S8W6uScl.AqHV8MmhatyUEj
 S8lF.Py8hJHm9XcArOnLmkUppOtZ_v3.B1EbnITVekhPSI80kNysCYLRCooYYRvgh1gWDkiPVkuW
 2zSd34oNngD0h5gAyDVuEdT9EkIx91RgsxB1235QssaNKC9byXOQJ_GHF3Gwsn7m30b_SgqMoFUK
 QKYYqq5T0p4cXBQEW0.yjT2hCL47GRRc3li2eXPhN0rk870Y5GiNpkvB1hRpbEQ5cgGn72tsMd82
 1AvrwpSO5HY5zIS9YVjzpa7wf9xK5rqi2Ok5opD5cwvEkdRHgjH7sVSqzgznoFVk3A6jJvlDShGh
 a6lZJF6hwYdNTlmj6NhtpRpWnVlRtH84hZa6JfzPtbloCUHYjm6l5f2NRu6DbPQ2lPAJfk3CgtbW
 jetmwkMYHvUijVkpyVxhlCqvExNPYwXdfPNqDgtnjrJlI.zCtoax3yyLkT60ljMwVLbEJgV66adx
 Q1Fgqy4vqPQyx2s5_KnAtwNOJ9iHiKK.bjmoGXcnpKOps03.u3w4RpLIUapYvqkkHNRb.blv_Khz
 29kn7C3GvEacnWEp3hcKkTT4RV2JaWBeW0.TVFBEmPxYOHDIpDIib3htHaRSZDBZna7SZXQb0jZa
 jRrMyciD4ZKAhlNmEEUW83n4bB3Lzy7ts27F1LqvjQ_b2Dbz2VBValL2WshBmu2VIXi.UedSPNKY
 GH_3glSHT37q_GsnE3GkLN_BABhjEsAQnZPZJ2FS0yqiLtwvLGfRmZgiW3_nIu58RTS.S.C2acjW
 3ZrhZnID43mcZBXWcH0RrUjvYMzoZC0G63bBP6kkuECQKKzWM4TuWf.Kb60QniQtQRRP26eY5Pdh
 bFlCkJF.DAO48Ai638fgFHhV2uGe1pc6UpamWMlOlXYpcsRZMhaGhrclvP6NmfTCdzdfJkX3g588
 B2gv6Nk1JUEtn5eBP7ktBY9UX22AEy9ccCbnQnCtradQjU9f42g0QUj4XhYfM76aMh6l5EBF26Yw
 nIXRuCVT.9eu0Miz7umJfGHlxHOyYMgcoeCykHw8h56KRBFHnp0UN7_I-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.bf2.yahoo.com with HTTP; Mon, 10 Aug 2020 12:45:23 +0000
Date: Mon, 10 Aug 2020 12:05:12 +0000 (UTC)
From: aishagagaddafi <missaishagagaddafi@yandex.com>
Message-ID: <1238387544.1781827.1597061112624@mail.yahoo.com>
Subject: Dear I Need An Investment Partner
MIME-Version: 1.0
References: <1238387544.1781827.1597061112624.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16436 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:79.0) Gecko/20100101 Firefox/79.0
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
Reply-To: missaishagagaddafi@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear I Need An Investment Partner

Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh

Dear Friend,

I came across your e-mail contact prior a private search while in need of your assistance. I am Aisha Al-Qaddafi, the only biological Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a single Mother and a Widow with three Children.

I have investment funds worth Twenty Seven Million Five Hundred Thousand United State Dollar ($27.500.000.00 ) and i need a trusted investment Manager/Partner because of my current refugee status, however, I am interested in you for investment project assistance in your country, may be from there, we can build business relationship in the nearest future.

I am willing to negotiate investment/business profit sharing ratio with you base on the future investment earning profits.
If you are willing to handle this project on my behalf kindly reply urgent to enable me provide you more information about the investment funds.

Your Urgent Reply Will Be Appreciated
Best Regards
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
