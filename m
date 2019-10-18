Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 601A5DCCF3
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 19:41:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7EA082286F;
	Fri, 18 Oct 2019 17:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dtV-g+1mRB1w; Fri, 18 Oct 2019 17:41:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 67D5E2094B;
	Fri, 18 Oct 2019 17:41:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A836C1BF373
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 17:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A41832094B
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 17:41:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dijdlyeenvHP for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 17:41:18 +0000 (UTC)
X-Greylist: delayed 00:10:01 by SQLgrey-1.7.6
Received: from sonic311-14.consmr.mail.bf2.yahoo.com
 (sonic311-14.consmr.mail.bf2.yahoo.com [74.6.131.124])
 by silver.osuosl.org (Postfix) with ESMTPS id E3AD0207B0
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 17:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1571420477; bh=ZkSLcXkg1xPrFHtzBsy9ipALcIc7hyyhd9T7GsQ9zU4=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=F1z4YwmAEk3xL+MpMGzYMgH9Kf/lQ2FmFz4n9kJTy4KoRexAqZk/SfyVIqKX+uTI26TLc/nrOx9POxJXjHD/ZOaoj/N25m8ShOBwJHoVykcYOa1BZeXhFfIaHu0GaiG6rXkfEB68aNO/67RPtV0OgRwIuQWlHoJGC0Kcr/fINBUMvJEc1JLFDVOsrlKjRFMZRhzykqwPgtKDeTJkcHcE9d/iPd4ptxqpOFZmj4nKqrxRjSxl25zzkY9sv7/cgSw7Dhk8Yrl2MZqwR1ahtMD9xv7qNzYr9Ql04tyN4ZrXdUvMYk4j/o/YaYI3KZGXyA6lBzCywQD6RaNkduKG7hJbMA==
X-YMail-OSG: DbZuhJQVM1nO1REfDX8KXmh6flEsjTZIdjCOFKo8Bg.zxggQWVWC1gP83JbJ7IH
 gXBJBjlgidyCWfUEdG1z9mECcvXJ2HTIO3a8itMmg9mh55UvByq2H2bVxZCtMUm4jt_B54N2.aWX
 H0NuvhtKxUgJ3RRi6DV2VLccbraRaOBc_hr33wIq_bltvjwrOg_V44SD3I.LqYsyUbhnMLs0uopT
 CgIiMRpwZOtGOMNsarmKDl_ZPnlD71AjNIMc_i.Vjj.dZ1LVUlXz0v4AcJtiXkwr6SqwlWBBkM.D
 K7FNmDOSefeI2HCgeSciQl.pGSx2_KkmGr2u9JmbIZdCd6FOILomIwLyqFDkyvqsNJqOw6hrlQh9
 ggEaLP2Ax2Y3Bqt4rUs5PPryah9vK9uZOWlMNALVoqXn60c1ljskvNc1CsrYMmTXDbz7jQSho_jW
 evArxL0BdyjUqQqohsDzpBRkCiWHpKnsjnlBporJOcmm3C9qL.GD3Bpec_0U86trE7Q8xzwuU4xf
 Rqe7ZDY1pzykm9gJafYVlxBCRlEffLRMIJovvZ2ZlEGaOBrdSfrJl_IL_pdEnKLvTFWxhzifrp23
 vY.SHKbs8Mwwa7TZU1BqupRJY6sK0uVv9YBhO6AfsBkFzgIYvckvLHJFK1QCPNksoF03HYWS1DKA
 u4lTPGy7W7zBfNZE8fDOJKE1SBTc7.APY2ExkHXHiy7d.oLeXB_vRJTzXrCbOI6rWfXRWp8KL76n
 .vJmbUvWskrrteCaPAJMxY7hEa2XdKxzQXh747KooP4RJERIBrL7COLLQuIcKBiIzchntSTMGSKO
 nUoFBEVZ2eLBqNlq5wQGGXj4qhta8AFcErzzln5Zd.dDfcR5Y0Lnk5n7kDfYIn83MXkgFDv.cCsg
 PJqsd3uN7oeXjCRg1zufLdcmsPKyjVpworFklCfsrVolNBeT_Xilolga5eGTrUUdBzPvz3GXgZtH
 oxvu1sgRZemPBo_9bXkQUtOX4GlHY7NvPa1_Q.LvJ2ZgUcDQl_i8YFfFqZk1ZqpTqhGQWmFZBvKR
 kQa51EAvGBw7g_Cwxp1XdrMCh9SfUw9ESz7vR2hArmLt0RcgZZ0DZy1RyZr0lwvXUavKNZtcKKNM
 YO_ilPGI6k8oiOV4SkFGNV0AG5hauT02v85mDFoBsL3mHWvvGj1.T_l87HgTk6EbTGtEOKP3QuI7
 1Jc8zUBp6FhdcWAmPM3GdmsE_L9EqYeJjbUAzUHjssNiZ2EAKd8ix.mf.k0r37oTIfzxCRu4o5Or
 rZpdYVScTTzdz.0U11eoJ66AInnSZxBbZKevaQ75ON2s.XY2ISipfVUlQ_f0SW_A2rbyDfGPcd1.
 TNkH4tdzlFg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.bf2.yahoo.com with HTTP; Fri, 18 Oct 2019 17:41:17 +0000
Date: Fri, 18 Oct 2019 17:31:15 +0000 (UTC)
From: Ms Lisa Hugh <lisa.hugh222@gmail.com>
Message-ID: <611589264.2389848.1571419875310@mail.yahoo.com>
Subject: BUSINESS CO-OPERATION CLAIM.
MIME-Version: 1.0
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
Reply-To: ms.lisahugh000@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear Friend,

I am Ms Lisa Hugh work with the department of Audit and accounting manager here in the Bank(B.O.A).

Please i need your assistance for the transferring of thIs fund to your bank account for both of us benefit for life time investment, amount (US$4.5M DOLLARS).

I have every inquiry details to make the bank believe you and release the fund in within 5 banking working days with your full co-operation with me forsuccess.

Note/ 50% for you why 50% for me after success of the transfer to your bank
account.

Below information is what i need from you so will can be reaching each
other

1)Full name ...
2)Private telephone number...
3)Age...
4)Nationality...
5)Occupation ...


Thanks.

Ms Lisa Hugh.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
