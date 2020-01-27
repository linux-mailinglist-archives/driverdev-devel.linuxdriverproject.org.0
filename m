Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A9A149E81
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 05:41:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D654587820;
	Mon, 27 Jan 2020 04:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P5M4GbzwySgr; Mon, 27 Jan 2020 04:41:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2725F8777B;
	Mon, 27 Jan 2020 04:41:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8780A1BF3D6
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 04:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 80E4C86274
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 04:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9aXdprtil+98 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 04:41:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic313-10.consmr.mail.ne1.yahoo.com
 (sonic313-10.consmr.mail.ne1.yahoo.com [66.163.185.33])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1963D82419
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 04:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1580100101; bh=8LAzAiQJxImzDJ0y6vnsDTSb4b/uaAsNN5wGkmBPsdE=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=sSdqLvUxXCYPnyIUCxVpzwayV3AmKuc7K1cuGjYiE3KkllH2PswFf2KimZ7AMEOiikcmW0Qq/K5x11k3jyd+F8Qh4Mo/6E8/zVwARtI5AoZ5xiJkRCbvw76WI2wkf7ULwrnQE1gGfGfN0mumnaOZYdV8W4wOG9wCRnh18ar1ub2az2VV5fAwjZMxFZKCkVuypB337gHjxJIoQcfec3MGmNustLamOI71DZ/KsqHMVRJ+7S8Nh0r6OW6k2aqkHcvKrUhEFXFqXtUbld78+KxB6TO18pTLn29m87rNM9i7Ox+EgF7pJLznsfbXZ4i9vTiM+Njgr8oL++p/5MSiYEDZBQ==
X-YMail-OSG: 9dkauOMVM1lTGUooPsOHd3KKhwVtAv3fjQl3xVJQznBktkr8pyvmoKj_aVVPJr.
 V0XKw6mfDNazLLkOrVxLHKprPchMJ2CW_adG3mAPb7eQf5YiRCHEsEXk9JUs4_zKR5YQJOxS0x9a
 Xyr_p9xvMLL8jbBiBE0ClsUa9VDi4vK2rSWf2SENn5LuyhKsAThy7Z.uR0efiUK8_.JIAw3aLh41
 yGvPCqukKjxfIRVDtX2Q3x.PKZPGIjLlQAU1Wii0QGbDt9reO5ckRCghvodpTRNx3XG7g7yCKPgW
 LASfVadbmDTHMg5lHZWkpv2BEHymVaFp5TY1AiMxZL_MsVfEBJ348YGev.1pqzSLeBtQaaEZLy0X
 X2HrDxO.2G8ip9ipLEzq2Z918EjCesUnr39hbdiPzpbIzysGwZlNhphHqXpZEYhHQH8oJteN3o24
 5Wv6Wqp1Wq.XY361meZHKJhZzoy_72gYSTjZNmeJSKpOxHv1cE1mizhlwLs0AX7B4iwgDTi3vGlC
 5BvPzGi5SePHOoIgQ5rgHdco8Gc7kAWcpCLeVfmT_0LODpuQJj8p4P0lbivC_qmpdwGfK12qjVm9
 WucoxQT09brjU8z6ZjQ9hNviivb2d4kFqXO_dR0RQS8UdwoXkm0A0.kkysnf4xpAsxBkM0wvP_oM
 l8DTHENOQLSpIWZ.BtGSGiPM3mwc43z7QYv2gkE2P72d4uUcSGmCslG63pzjps5I.xUw4JIGPW1K
 XUl2tbkDCsArDSGWWy9PVCTI4E.gB97uScA.wgUKswQQXCOtHFBgWh56pqIwiPQfN4JIRdjYMDOV
 8eBp_nAOMpbqYeddxHKbuwg_squk1abeqo32v4ERKK1RdNbFv9thZJNTMYduPJIz.B1.xBB4iRx3
 zASYzom.fG1j27diJV5zdl_UBEx3XMX44Sfd5GB.H.uRCvTQQc3dh338FMwTxEzmI0ms7IxfTlc7
 lCxezzi._73EV3n7W6Sk0TtRayCJSkZnC9YB58bb0SVZI7F3HYUNuhJ99zAM4JeCHi7TlZ8rMc0C
 aQXF2mWFRdZVJD9D.FdKtTG8QX2hzJVDTI7FM2vmKaC0wBCucL8056w9QZuw3e1N3MSJKUHfXwUb
 G5U0G9kL_lGSMNJnsTuvTpZslPp.PsVTX8KpJkczN77k1KHP3sCx79JfOZ9PbbD64lWXIRuGP5SR
 0mysqFJCglpjBb3rM2KAeEqlSHU5Q70kfSUy52lCxYDyidt0fgsHerlPq.JmiYxkHMNZkGypRFsE
 ZZkwvxJuSDRnkomiCrWRFm6.23GadxaHWWYLRSbM1H6rC.w7RsPBFcZtBtJIziUtwQVgzYDyNRkz
 cFGyMrSZigblrMA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Mon, 27 Jan 2020 04:41:41 +0000
Date: Mon, 27 Jan 2020 04:31:38 +0000 (UTC)
From: Peter Joe <peterjoe20116@gmail.com>
Message-ID: <840741523.821893.1580099498365@mail.yahoo.com>
Subject: Peter Joe
MIME-Version: 1.0
References: <840741523.821893.1580099498365.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15116 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:72.0) Gecko/20100101 Firefox/72.0
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
Reply-To: peterjoe121@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear,

Did you receive the message i sent to you?

Regards,
Peter Joe
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
