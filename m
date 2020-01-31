Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C50714F547
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Feb 2020 00:54:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0E254228E3;
	Fri, 31 Jan 2020 23:54:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZRrUZnPmKPtO; Fri, 31 Jan 2020 23:54:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 250F92046B;
	Fri, 31 Jan 2020 23:54:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D933B1BF847
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 23:54:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D52BD20459
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 23:54:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k4opJXBN+dGb for <devel@linuxdriverproject.org>;
 Fri, 31 Jan 2020 23:54:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic309-25.consmr.mail.ir2.yahoo.com
 (sonic309-25.consmr.mail.ir2.yahoo.com [77.238.179.83])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E09F20453
 for <devel@driverdev.osuosl.org>; Fri, 31 Jan 2020 23:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s2048;
 t=1580514882; bh=8xpm+cacAfAnFCbwSdgMceaBJxowNWaFZvEVU/zxgKw=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=UCCNlxHH3iJlkrdxHvfG7M878b2QIeru/4U//+BqFRtY5vmWYp05F6/SmfaNOwn/d8XDTrGP6nkPJ4LhrHjKYHeeRNHTYUJmWAvEN5V12rWx3aw+YqHfBQru9QMmrFl2ynEvqQ9JC+H6Zet8GqHGmePi6xb9a9rQ2PE27EotmgQgg2xQh7B176PwnXeLQKYAc8V071dZUIO/lSjT1HRvFZlLzhRum/SHaVoQBqbyGPhCstgd2Z4+qRD6mz26xqbKEawRJQubHJ1xAoUoZi5+5bE4LzUpBO3WZJJN1E/PT4NDV60OckJtkDiCEIjYxuf/pNV3ZweflyF1IKdkVAz+tw==
X-YMail-OSG: c2M8CbYVM1m22KS003u6ma_xCQvSYLSCDoh0r.Cgf2BzgoFTmiilK5utrwdzOA2
 sJcsyS5e0sQhRxnua0rcRH2SVSfA_D8vC2BOmnihP08IBCN99zuIEMcd04BsrHG2sEX1N62KzpMK
 vdQov5J1HKqvKFKRRC8CizyWdVB5zZQs6F5GGoYhkbsB7geAyqDQIy2LSaP_vKXt_BbqYsCBwLnu
 iLeSZrpmlXRt0DU976lpG4nq50SEJx8dSMjTSY7ur_2cL9ym.5ar60TjoNgD4eYLb4b7nkWXQFJC
 RncVJWdNmPyqAA3d86x11lkvu2HZyobOwyzMK30flGwJ6LEsYUxxXYxhd7_92zAgXJLDQ_ZWGZDG
 xFBAJZ_iW9oVhWFJH2DXQtqph3FTkYxfoTfSVBdAxhNXTDIaBYoZa9F8TMFeQfCeUb5F6QcHDJ2k
 1ARZed_YbDnrW9KQFVfM9QiJCeKOPnUwEsIQ4FAd6ML3zMX2fcxSlphkPaeCyuiSs6.t18s7gXoy
 YNuHrH6urAMzZByoVG2L7g01_pYWbuJh4aSu760KVeUsKOiHB15oE4jerR9o8RVh48g2lSWPu5zf
 9KFkaXE1z7QiW2j0JozVKpO5bYBx0Mi0bO2mCLP0MCGV0t_QUlEB4CVIVc56Q9bMHXMogxDQeLxy
 XwvWS82bEA3mRWw2AonjqB_hRRaaJQkOnolrEhtP53VoVQdIZ.ZiZU2vglxwuuxftg6Hr9382_wn
 GAvj0VXyY9dL003cIdjap0yiUIAvI1r8pn9CYU_LJW7IHHeHxCdo.ppPQnvoA1ywXQfg_jY1CVEM
 cSd4neSgBe.Dauz1a.2P9ZFvHKVWExuiq.6jj1a8GcF8wjcz5LGjUYPUiJnTNlehBnrsaBjOG9h5
 nmFOhH1cLdQ5Ybq6nKfVGw4qdziNWVMh6Vv6ypwiTB0tq8qq5JzEfcN1dxzgQx2AKRkxLMwAMZqh
 R2oNiNyPYaQo_QmTFe3Q6mXQw7DolD0AV9owl9snpRmHnr42F0s_LvRktUYJP6gYRkUWfH7Ezeqx
 MWBOxOqI79MAAewln96GwNqGVLzPTpRaCZzTFD85Pj1qKBk1LOu.fxq7y5PyUYkfG6yvYCHEumAK
 ctT0GFIF_981SHqaBG0zRpLxGKyPEivxSdyN_NAu35gzJYw3I28S8x6YmsGKjdAbg5g8Ubx4So0Y
 4aIqFTm4vyW8blvyu5r4XcnujoQ8OkjPx_W8UPAP2CxUxKJ75y28dBvZY3sB2Bgc7iTIs_tAX.05
 .60OR4Rvdypl4FpbkRVr1SEFjMhqDbbxo95N_83oSUd7rCheJ89CBfue0SDgE.KkNmhIAXy4TPmG
 T
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ir2.yahoo.com with HTTP; Fri, 31 Jan 2020 23:54:42 +0000
Date: Fri, 31 Jan 2020 23:24:28 +0000 (UTC)
From: Cherif Titi <husseinking@ymail.com>
Message-ID: <109073422.41310.1580513068993@mail.yahoo.com>
Subject: My Dear
MIME-Version: 1.0
References: <109073422.41310.1580513068993.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15149 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64; rv:72.0) Gecko/20100101 Firefox/72.0
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
Reply-To: cheriftiti268@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 My Dear

I am Miss cherif Titi,20 years old and the only daughter of my late parents Dr.Richard Tit. My father was a highly reputable real estate developer who operated in the capital city of Ivory coast during his days

It is sad to say that he passed away mysteriously in UK during one of his business trips abroad year 12th. JUNE 12, 2014. Though his sudden death, But God knows the truth! My mother died when I was just 4 years old,and since then my father took me so special Before his death on JUNE 12, 2014 he called his secretary who accompanied him to the hospital and told him that he has the sum of Nine million,five hundred thousand United State Dollars.(USD$9.500,000) left in bank

He further told him that he deposited the money in my name, and finally issued a written instruction to his lawyer whom he said is in possession of all the necessary legal documents to this fund

I am just 20 years old and a university undergraduate and really don't know what to do. Now I want an account overseas where I can transfer this funds. This is because I have suffered a lot of set backs as a result of incessant political crisis here in Ivory coast. The death of my father actually brought sorrow to my life

Dear, I am in a sincere desire of your humble assistance in this regards,Your suggestions and ideas will be highly regarded.


Now permit me to ask these few questions:

1. Can you honestly help me as your daughter

2. Can I completely trust you

3. What percentage of the total amount in question will be good for you after the money is in your account

Please contact me with my private email cheriftiti268@yahoo.com


Please,Consider this and get back to me as soon as possible.


My sincere regards,
Mrs.cherif TITI
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
