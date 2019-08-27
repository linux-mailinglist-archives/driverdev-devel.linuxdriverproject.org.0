Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D649F3AE
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 22:01:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BEA2876F2;
	Tue, 27 Aug 2019 20:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJ2ZZZxayy7y; Tue, 27 Aug 2019 20:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 329A2876C4;
	Tue, 27 Aug 2019 20:01:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34E3F1BF36E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 20:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 31FE486B04
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 20:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4YWbk5bOUFSY
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 20:01:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic306-21.consmr.mail.ne1.yahoo.com
 (sonic306-21.consmr.mail.ne1.yahoo.com [66.163.189.83])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 42BDB86594
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 20:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1566936102; bh=d1bRaic/0qm80IKpfGcgxb/A2X9Zy/Ywrgs7tajSgsI=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=mtLGPWb84ESDvYlcQxYdeEfpBRgTFbvWWo7OiQmxkQ4kumWWrSamKnPGqVQD8ebXzmmL3zLUdyCBwyv8bBOWY2Gbke7QnlaYyqERnGANapT16Fk/kWHKZKJoTQqgl8g7cEbf7VGE/aOPJQ96XHbT5SxVB2Nh2cnET67ZboE0DDS47IXtR+j6BHSJ9hbtfnX3giyBEF7D06PY837x/1saXOuFHgNM3va6KmaSv5UHMS/wwxTy5arLKlGLTiDykTCiU8Su/5Eosjgac/l1EdMy2FkPqKE2uA+uC8DtphuMirYOXyUM6LrcInhEatrIB2eoej91hM3maJ8PrSqVKiJCkQ==
X-YMail-OSG: .yyjT2QVM1k_7WO8FclKD61CIKIJD1bo2MkkrgDXxoiraIgrPa4JR5AbOWMCGQq
 m0HKD9qe7RshAnsQkTUtBQ3C2oYgyqwZweof2amNLhgNtPjpNPigBzAbEGmsGIwGgAWL8Rxz._Qu
 7kOfiaZI0W8vl.idyoJCeM.ztUmmggYuPUdCg5U6AmwG_d77GQL3nx_3SN3_P1_jr.OD5XVyV6w4
 6bVL0APUWacgzV1C8XRPnAsHZlG3kMrP.aPjEHje1in3_bMj_CHYlV01QhZiTUVm4X3U7hNdIhhf
 71ea9jq3neUn_rOvFi7810L27NXJb2wO2fczIBuE66YxaoKQF1Uifd9FWXyxQznr07OI_wFWsqcA
 T3iQ9.2NB.IClNr_PTmfOvu3QvZnnASw4lCVnfdCSJrMB6fBlvLydAShvJW9ZwY1JHhtZTX1O2oB
 PmoTcLVimD6K.LWkNFAbvoJaZrgt7qJ94vYarjwznxUiWCV8A3txwGZDQqqdcBmFFzbbMzc9Ygws
 u5dEPkoI8oGBG3.BUjzFDUfqSi3tpl2ewWaRxJofkh9YoJnTDoedIql2IjyFd2qcF9I3iPauazr9
 Jq4a21chcD1Uwnos3ZnJddb1ojSpAZZZLp0rSRi0mVfrwzslPL.8LfLt7qEB183tvr4CeqREohkv
 SrTxRzCeliZTOafuI7UojL0ppG5H1N1iR7k1BPx_ozopA76oWK8rcVfV5HWIhZm9G4zk6gY2aNZ0
 Pa8r2dGrHXpfCMA6kxTI0.0w3tkxsNoAJCFwPEny_V1FiCLoHoOEjrMM7HLVHaeHqHooc0wLzgir
 G7X.65uu479Em3pJfQ8ZhGmRCTD_EWRECikR_iZ3YUrovoyQg_O3ZgtSbASeRxtgRogDFXtpRq7y
 mxtA_OMa7fmlLF2vZNot6f9HQ57Yv_wYNe4_v7csY20IML4BoB9zPIMDy3v5Q0_U1DnlAWvLr_Yp
 3QzxDTfu9fqF7p.MatZHuxwSY.ma1a6jhRL4Vm0cZJ.0EWAzhipTpvXFjS2nQENvAYZN979FjsEK
 eMeicNENnjxnr3YOlejCrVi8vLDgxruyNY992LNRJlzRM0mRkpKUNfzadt94EuiW6bsgQmJYdyDn
 JN768HFeK0ROZ_bXdA3QXiZ7dePU8aJXqhqHSsJp7viIVFTNAW3NWvdQ8yYe_nNW9D2Ty8xfc4Ls
 EDzH9rHPjNRSZeR3.JDIOv44yOTNkTQyxesTjREsAA8Z5zV.3E969M.s-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.ne1.yahoo.com with HTTP; Tue, 27 Aug 2019 20:01:42 +0000
Date: Tue, 27 Aug 2019 20:01:37 +0000 (UTC)
From: Rosemary Jones <rm.j23@yahoo.com>
Message-ID: <999339109.56050.1566936097820@mail.yahoo.com>
Subject: Dearest one
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
Reply-To: rosemarryjones123@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Compliment of the day
From Rosemary Jones
West Africa Ivory Coast
Dearest one
It is my pleasure to seek your opinion and also to confide in you for a business partnership. Though we have not met before, but I believe one has to risk confiding in someone to succeed sometimes in life. I am Miss Rosemary Jones ; I'm from Ivory Coast West Africa Region.I contacted you for this noble transaction to seek your help and advice since I am too young to handle it alone.

The sum of Ten Million Five Hundred Thousand US Dollars was deposited in a bank by my father in Ivory Coast which he wanted to used for his political ambition, before he was assassinated. Due to the situation I found myself, I have decided to invest this money in your country, because of the frequent political instability and also for security reasons and the worst part of it, is that my uncles are trying to kill me over this money because I refused to hand over the documents covering this money to them. They has sold all my father's landed properties which rightful belong to me and has been on my nerves to give them details on the deposited money, which I refused. My life is now at stake so I ran away from my City to Abidjan, hiding in a hotel pending when this money will be released.

I seek your assistance in the following ways:

(1.) To make arrangements for me to come to your country after the successful transfer of this money into your account, and further my education.
(2.) To help invest this money in a profitable business since I am not old enough to handle such matters
(3). I want you to promise me that you are not going to betray me after the money gets into your account since that is what I have left.
I will be pleased to offer you 30% percent of the total fund while the balance will be invested with your help. NOTE: I have all the necessary documents backing me up as the next of kin, If you are willing to assist me , please do not hesitate to contact me for further details and also hope you will handle this transaction with almost confidentiality and transparency it deserves.
Yours Sincerely
Miss Rosemary Jones
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
