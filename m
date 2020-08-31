Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A62257F6B
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 19:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58C4D86FFD;
	Mon, 31 Aug 2020 17:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XIC209rcgfwq; Mon, 31 Aug 2020 17:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75F7186FEC;
	Mon, 31 Aug 2020 17:17:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 631331BF3FF
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 17:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5FEB285EBB
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 17:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNqTYFGiD876 for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 17:17:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic304-9.consmr.mail.bf2.yahoo.com
 (sonic304-9.consmr.mail.bf2.yahoo.com [74.6.128.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B320D85EAF
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 17:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1598894239; bh=/wWE/srJrz9OuGq81agug6j8cDZKLJjOEAHUvES6oeE=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=JsBHomzTO9EpVn9/cbcKFt+4Hn7MVg9LJpKy/39soUrojxY97vFcE/dX+mQ/ydP6ADgqhCU44nbOE4ZdHYD9cIgU6NFPhKhpHAOuVy7Z5GwrPJCYxNHRO5qfZITw+MeoAVT8TBUzYX22OJFtEhkfyuXmHCJ1vlJYt8CFUlqwQnUCfkM7skR//e341XSnTyTWW/U0O4rXFnLZHb0Nwi1HB7dkT+2VWi1PeOpg6gPpTo5X/Jv9tEsHbrpOHFBIrbIwblYGX6c3MOPm0W/ogTybAJ5X1sYySIlClz0tFcGk7W/hmmYddZ+DRVT+iDFHyQzTkWE5QsT77hj9wUXpwYSHKQ==
X-YMail-OSG: Y2j9ZxQVM1n18Fve_fIxx3xQMH_5NmiIxq_OJM3BsCow.n4.9.1McYbOpCJDiTi
 MroTrHZKcOphrwtXO6cHMZ96ViOVbKxdGI.kSbkyJphGlqP1AbrSgnZDO6JxhEizCPyXZmBiktZ0
 CCMhedjlYSDe1QxgK9.R96pgDUHuG1KYXe2MUuVLk6ccRm7JtAkk67NKeGS7JZRTOaD6QNCe.aS8
 hddHLZWJHEfohBAzW2YOe7WzbBc.R4pF8B.vqcknIeyANkVI6ZZr3XgnNjIYHdZ_LTQxkE9is81l
 kk70ONVJEAnpTNYgL7yb_hM_3KUJdXSc5RX9oGuEqsxt7LClIX6RnmVD..tL68BSQZaP.mtndUSk
 gHH5GnxjVFTsRHKLNVPIbcnZqSVo0NCsvw6sJckx3bNwnxvG3edWOVOivy3qvDSf0kbFKTNkF03t
 WF7pfNdREa41v55l45NRqrjp1SsRO_Wm3Rc6WRX6bzRQk9Gf1x0w2BZI6KPm_RIgRbrNqkgdszH2
 vvYRbdkhtqsPR1WhAjayVaGqmxd3Dlnx9HlvpO9boBkCBDY8f0wWJrW54dp8M02lLlpbAwJJipgj
 bTy_6PbAmjPDh1nLBXONBL8ja41_Z9wGt55vRWaTzqvNe7kiium0sNfA0C1NJoVaWxydDW2_DyHM
 SzpJWuBweTtM3Xj.UT7cKQtepve1zuRSPP7awhGhx91WteAssYdluZv7HMjL5U_cWgektGPd3yI8
 qDF9h3cc2TixTFasNXtxs1ugxzZNGVETL9.07g2bhdye5ZSIbatp9J5BxR3asfYk37zmWtNMh7q3
 5mqkaGgLJzrqFkxAIUOwvB7XMAnzOGx8S9gbUv4ZuCV9L7we3NSGGs2O5BuY0Q3Tj4JP_Pfntxbp
 KZYoGTu6Ub8G_yWNvCRGmQ.VS5QoVtVRq5SEmOxfP45W99vXn7h2TjM30QlUVjIK.ljGHNXuAQoo
 T4cAbgm_uqL0tBfGsx3hPb6jk2VUPYhe2ZqpNmnqbsDiUMqQf9Jnaw2Q3rwNmFAqBMX5j.N7JafG
 i9ff8ukU_UMTocS0fsm4hotA0ywyCFQYtzuXfmVaaRobt3fB9bEKTlzTGGEQvsz.GSXStGELmJF7
 MQIc4mZ1j8p5kWlI53dJHe8nOkwZSWXYUIF3Vs8V5ed6vPgOrAj_3eVfhSYpTJw.D33l1Lp8ciYl
 Hjh0GjWxSYZCCcT1bZYERtx1ofQqi4JLtCtFAktv5MVoll0_BGWqJKnRm5jqx2yNaGlE3L8jrBRI
 YREhrM41kdEmME53uNMqqaCSDLM7OWwheNmc.jrYVXwGJRu6p9aJLmwFBj5UvitNQQR6RFG52ggO
 VxAYA0Mb3xftf4k91ddbcevIiPKHkh3DVrZT4Uq4PcdzgaOfvB65OZt.6R0S_N3GIDFGEerXqYcu
 l.mHPh3e86DsAuP6dQ1TdvPBIAq2nTW13DOCT.2Fy.tsAaDXLZ618
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.bf2.yahoo.com with HTTP; Mon, 31 Aug 2020 17:17:19 +0000
Date: Mon, 31 Aug 2020 17:17:16 +0000 (UTC)
From: "Mrs. Johanna maaly bob" <erghyvhuj@yahoo.com>
Message-ID: <1188381794.724260.1598894236049@mail.yahoo.com>
Subject: Dear God's Chosen,
MIME-Version: 1.0
References: <1188381794.724260.1598894236049.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16565 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:80.0) Gecko/20100101 Firefox/80.0
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
Reply-To: maalybobm@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Good Day Dearest,

I am Mrs. johanna maaly bob from Australia. It is understandable that you may be a bit apprehensive because you do not know me; I found your email address from a Human resources data base and decided to contact you. I would love to employ you into my charity work; I am ready to donate some money to you to carry on the Charity work in your country. Please reply so that I will give you further details and tell you about myself via email: maalybobm@gmail.com

Thanks and God bless you,
Mrs. Johanna maaly bob,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
