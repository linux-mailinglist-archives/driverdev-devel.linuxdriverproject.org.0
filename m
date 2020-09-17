Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3EC26E401
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 20:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC44E2E159;
	Thu, 17 Sep 2020 18:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TTYGuMlXiFvt; Thu, 17 Sep 2020 18:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 39F1720402;
	Thu, 17 Sep 2020 18:40:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAAD91BF47A
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 18:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E71020402
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 18:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LssIIl7cjzgy for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 18:40:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic310-14.consmr.mail.bf2.yahoo.com
 (sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 8F9DB20390
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 18:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1600368003; bh=8gloWBfBOVIhTwRoB2OlBVoguM9wbxYIkS+Wgfn/ndg=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=hF0cOG3e6ou9s5fnBJL+TO3hM09BQ4RtrX1eVNx4jAOX1O3v3CQ3vx1mKxTWjRn1OSWOn38psM+HjBk7wI+Q+eeVrthdmgQeSgm/9IetPDAp89LKcfEWK+3mGib8WkMpH7AzSSv3a+9gLErxXX/6HEdaMiWwaZn2RFt8H9d796ikBZRq4GngAQWHIfsNaySYPNSlfdt0HpKu1Cpt8BsFx8yGPYvCHNaW4dkLc+w3e6aZYa3qHrTwNRdXUytzIh1CDY+1czwK1PlUbPZEECIASp15Kos5mwPs6am6s7PaDj53rxIJfmLV+NU2CMEdEkkLSdXO9tcgEe214Kw6n82/MQ==
X-YMail-OSG: OBZ3pLAVM1mQF0zZ_Fr5EWkrluH9ZD_a3Gb8UEqj3YokIyn8lzW4U5rt.Om3T.N
 yWs4zsBJ59pR0DIMAGAQSSC5yb0_iIHrvRKssu_V7zGSx8KIlQNKCD9cOd8V2pQrDaXbXdaZQVbz
 wkc387fhnNfvXxoRN7trLFlpkbkY0h9u_whNAHwHT6kVb98Cc3Pp4hW0TsqZL.skA016pFHsVfMq
 Km2ZmzrbhLaihmb6AOf63gMpN.kuccgyqOQyl5ERyRBQIKH7VYz.TIYfOheUGNZP.7ztE_ymNtdV
 7CzvOCI_5UjMNh5JU80ZSwM0ymTu6Q3dKjz3SrOq1WMxBEU49rV5N_R7PAO.ANBaPSRO5O9gxMn6
 ZuB3ahPbSYPGOFcWaXAkafekleao6WRaIO8aTr5oyqhAgmwdnV.n_rm0jXebluAdbvXPF4.Jg_HW
 HWiSu3sMq4niLt.BnV381MEchbH.gzZpPOcP4lIHNbT1EdYxf_KPWdI8z5NQnHjomqvjfsNaaSza
 YFxOppOs5F_3rLjZG_zgsk2khWNQiviDACpyK4OTAKPsnhkPXdT6Io_Z4.hlKYFm5UM736OhiKHi
 pkdc3.eJmmgYI5fywO9cM4Lsg9yp0_wTW0r5BZe8Pe1JxS1kQFKfLRq6YFAYLybTPC4qaFRhKFC.
 SVEpQcNx9jX38srnNEDV_QIY1oa9WDVjSNpGGf_8ksTDni._rrlLpnFr0ZwAHSc8HZY_vsd.vpKV
 efRjOAd4KTtDOA8O.nRuRrf.0jlVN50yTrpGQSPN2zcfmjgidjposRsA_ukTSi8Vb910iso7DUNp
 2Te2bKWqu_omOSeE.q.SM68yKzpYNE3N36xQVab4hEDiCfzSPqi.zooCvKSDhEjKMhTE32OmzV1d
 4kHStRFi1d8EQKliWWFSf3pNGOLMsmA4o8Us1j0Tv_6xIvlZaLlHEcBeXgdSv516SkAYNSFItrqF
 XKAshVqOON6Aw26q1PBPECwPBWdb5799_fWV7B9PpmvXLXffE9ICUOHVqljvA8fYlCrfyrK9GfEM
 3LjEaFTVfo9BuxZkn03m94qPT695mY6_.r__tp2w5gIxxInye4yu5xwPwrwv8_s9VjP__l8H63M8
 60OV7W6A0AAVOC9TJWSoBJfnncnC2DPZLGhZhNEUFrr7bjGh7KYR9VPhQ8OaAHa4UQRe0.QD0qEF
 wuZtZCHCMWcPW.ls5HhR6a7Qj3_818dGJQ5WAzjypw4jbQIkD9vr66fKBjr7WJ7biaNxGjy3Fwn3
 7gWwKhg0T1cE22DeykU3IpGHqEduTlx3wktTGdlwVDldDuVoVVMGtwELJSTjIUuvlY06W__r_QGU
 vTAYHoS0nSy.AhOTpejygV8j_EsMU.flTaqoThbgw_xvFXVGs_jZ8eZdjVLxjiz8x_3AbQ5gUakC
 aMlYJxw95zE40jZi2M2RmoM6sNGJeWzz14I8IZGI6qISyD0w633s-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.bf2.yahoo.com with HTTP; Thu, 17 Sep 2020 18:40:03 +0000
Date: Thu, 17 Sep 2020 18:39:59 +0000 (UTC)
From: Jane Lilly <oukhgnbv@yahoo.com>
Message-ID: <1447275039.3309761.1600367999029@mail.yahoo.com>
Subject: Offer for humanitarian work in your country
MIME-Version: 1.0
References: <1447275039.3309761.1600367999029.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16583 YMailNodin Mozilla/5.0 (Windows NT 6.3; Win64;
 x64; rv:81.0) Gecko/20100101 Firefox/81.0
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
Reply-To: jane.lilly84@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



HELLO, 
My name is Mrs. Jane from America, I read about you from a reliable web site and i will love to employ you into humanitarian work in your country, I'm ready to donate some money for you to carry out the work in your country. Please reply with your private email address so that i will give you further details and tell you about myself.

Yours Sincerely
Mrs. Jane
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
