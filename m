Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BAC2640B7
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Sep 2020 10:57:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51D0086F17;
	Thu, 10 Sep 2020 08:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xpt3NGGeQ0Gr; Thu, 10 Sep 2020 08:57:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 518AE86E7A;
	Thu, 10 Sep 2020 08:57:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA25D1BF38C
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 08:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B063A8723E
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 08:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4QDzRrP-osMt for <devel@linuxdriverproject.org>;
 Thu, 10 Sep 2020 08:57:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic314-15.consmr.mail.bf2.yahoo.com
 (sonic314-15.consmr.mail.bf2.yahoo.com [74.6.132.125])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 44B5D871F1
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 08:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1599728271; bh=a2BI4HAS2SPSo0rR/fxhhpwCdoXE+MXHpavO73AfbsI=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=Cv9rpScFMLJ5cEvhx+eANxS+gAGO2X6OAhWlT5GLe2h8tNOCBscjaENS9ubI+K2RfzgcxEmUTOW/tdceFFVzYKC3Q9XtSbEJrzrQlHlZ9Ra6eX/PI2WLqVRn3coB7nhW743Rnpvhy9utO+Wxzy1KvSSa1IRk0sDcffS4O1gGMsEyw2hjGINUCFYIQ/gVi+LvJANQA+J0tCNRFjS+F2XDv6Wsxc9zHr4JbBwFdv2urN4Iq4tQLajkBGtHWRJvsf4Lj8sDlxoUKbEwbjA6u3/X2zLauAPMteHCRaKYit7fwd7bmvoaJ7CfYxj7WQzox7I61fHGmspVZOT576cobbR0cA==
X-YMail-OSG: HJtjos8VM1lQtz_3XiFULMH0t5nDbg7jDCZmtjDf7rmvZ9WiVeH8M2nYFZTMJ5Y
 4mJq19GaTcGvsanto9QqlHen2te3PwlpFaIz4VwjEVuq3RGoINtCKpppRRKT94VROjhyC7zyjvDO
 lJzzgG_k1XCRUTJSfU._e_4bhZ1AyeDZ9qRMbItUYUxYuNX3_CCxz7BwySSONNOY31TJ4264ZzH7
 S7mHZT9utjsEMnRLenKbokwDmNW6Z2juTtRXgHP9oFnTKa0uyIiBTN0Gs1kJYNEqoXpRNmlND2xo
 XUS9.WkWBnWB.EhjGOETuRrGgT22vTkQtyf4emeG8X3BfY_M5jr0py3wV9ITQrAbET__ITrW1fAj
 P7KV6AAEqh1OvkOxDKSImGCJ5ArLUJraZ38AEduurIIcrhoBAyQ0l3rB5yU3klApfdkUd_n5cSiU
 DsZhLMG2gWg4xbIr8z1ePtC6ebtYd_Db.dSYBHZWNDL25y3AZNHBdBH9kx9PQTJ4unKjsBpp.LHi
 tMysE0l6iHQyiKEBOsPN6_sQenGnz7QFrXydJXfZkr6zymgTBkepx8t1MsZ7Lm2ADYA77goX0Wc_
 zot2_ZS2FjWxO1oHatfyryABYcDujvNWddIXX8fsYTJu29.Ob9PAPegQsNtby.tqS7KrSA0LOpSw
 bXDrCIkj45h8tARRaAR71ei_mWh8o6KIQqoQVoUC2ewS9MbRbxHqWGxgnRR.OyG_6jLnrqen6KUm
 TwfL9N1Q84M0bzXrBC8t.vBOAgJPsXWaSmHM8.lu5saJjl8LTLgDwpSVcrpsiRm78NMrRrCSOV6V
 rBu2EYebe8cW5kYffUYXV_85YZtJ_9guLEBFuPICfcNToSjdGRRr6N6yceRx5ZngJhj9dyjgD00D
 Fdk75.VUM43MvuxSz.ZoHFKMK8u5KIvi6s2bVSS5HSZ9xO7gZCUj9sH0LTz1k1srWhBQF5qsQYQN
 FTWmygLVtVLD4VLd.hwXU5Nhp423KDIxfScVvAUR88tepRw23OlCWojPu4QO3v.gt3IhfnlznV52
 0W2YZq50xMbHn9.jniQz7hjEusEMQOJWsM.LYd_0.2YZH5Dg33fnLlJIYgtMNoJa_LkmgrRmSkE4
 nIEqf56XQDU2PkOS_zgabrDLqSVms7JrnhwQIacO0GVUMbbK7MBIgRwtmsaaTMkFoAGHxolCwsyh
 8O6MsPX9Lv_0diWPD8tc61y9nvwjFx4hLy5NNxpbmIOBXf4pT8eb9JRfQ_NxD7O3Qp6GihCJTU0v
 lKkkvcFSuG2dTjmr2U__cy2rNc160mvow6q2IVdBFRx52nCSflABNzghqrZThj_AyJkEaTTYqgB4
 AL4hpAz8Vok.6r6EPuTR3.15wVwrmQ5sMsntz_IQjnEIEUXBrmarF0pFgW3VYr.iWc0ZSXmdsEMQ
 _5tpIm_T.GcEDLcFcxCoSGwUosuCPGmePtmfmaHn05j81SvHZgw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.bf2.yahoo.com with HTTP; Thu, 10 Sep 2020 08:57:51 +0000
Date: Thu, 10 Sep 2020 08:57:49 +0000 (UTC)
From: Crystal Gloria  <haapyjoy@yahoo.com>
Message-ID: <1317069844.585083.1599728269045@mail.yahoo.com>
Subject: Hi,
MIME-Version: 1.0
References: <1317069844.585083.1599728269045.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16583 YMailNodin Mozilla/5.0 (Windows NT 6.1)
 AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36
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
Reply-To: crystalgloria3@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>





Hi,

How are you doing Did you receive the message i sent
you.from Crystal Gloria
thanks,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
