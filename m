Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF461B9489
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 00:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09F6585A58;
	Sun, 26 Apr 2020 22:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dh1VgUjx0nCm; Sun, 26 Apr 2020 22:14:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E263858DD;
	Sun, 26 Apr 2020 22:14:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EE371BF375
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 Apr 2020 22:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6BA80858DD
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 Apr 2020 22:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2MSr0eYhlSc
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 Apr 2020 22:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic308-9.consmr.mail.ne1.yahoo.com
 (sonic308-9.consmr.mail.ne1.yahoo.com [66.163.187.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3944D85797
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 Apr 2020 22:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1587939295; bh=CK8hs5QhawDF3aaQkLB8GL9CYcLbe/kQaGmJkokiQes=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=fnd8oQUT/BN5kKB9/1HSumFq5SDXU/zso/2CneUtg3dbv1Aiz46XtoGPqaco45V9Bqn5QH2FYGXKwg9o0ExoKlFL6KNqn5dThVFeIwTiSeoHYrLK01DHrcaHF49Yrebma05rkNjE0t/QT3eKNDJq4EgoPHyPE78sX+MXcvMZ3tDEytobY5Rl4u1BextjxREqSmr9jK/VrDvRg0yyu/sKyffrTqD4WvEbjWu1HlxIgO8mU6uWu1cuoRn3a/y+o4pVytkX65y55eBkQRM/IBoGPkH++DADJOXFc69TBRpsJg8sfVkfEpqPWmhyKyJ+kvyj4yBOi6IAbbH+b8MfuNMiOg==
X-YMail-OSG: 5749R.EVM1n_6M5ZnPwrH_aUWLmYje2hbKV46nU7gmHNCTvFbAlhR2P2px0zcKc
 vl.CIHWeDXtkmvuRObYNm_J83b0kXPrA_1mWvREzwNW9pb_5kp5FrsChCN63JQEhsjwjpSfTDmRc
 J7gwuG7RGoDlAlFOIEdNN..TNN_A8E2FKBwAUY76RG097r5B8NE48aj1g.t3qeo.vJNLpBbIoHRX
 hs9Ayp25TjF8aAZlrgyW17NrzqV.nAdnFLc9Gt2iuI9sWlQvD6rWy81ytgjt4OSYXDtcmxTrIqiq
 jPWXm8pDOGrXvQ2GPXkvTFAiebgAaJAAnV1yCC_z8c20m_rL.Uy7T.2kCHYZHVOxItwzCICQj66F
 Ju1RA2UUa.8Xr_bi6VmXrLC.ozsxtY8QFMyp4OdkpPqa8W4vVQc8hYXuZlAge9iG70gIgKOII0Z6
 v_UoLgFr2WW.v1YN.ZIefgH0ENYNjsL4vXrHDJxDcxRYZkO5_dzTuIfvbXuO3X96DzN3_o64SVyS
 tIWajz0N_5uUx5GDWhZZ9lerxIZ.QGGLjoNLHZBtdExJKhR08JEClP59_EtsyjeMek17Z4H.6lo0
 KW6VsfZ5_wR9EAFHlJaxJPOOcToB7ksXWBzUTHTyWjQnklpnOgwUdnVmuSMztY9i6yJElMxZj_iN
 rF4b34rvQ31yajXUppL.ZmPrr8wIQIiB.SGv7eOIoVXldq943Dom5CJ6QwGFYo8oeNEACGGtls6f
 e4sucTW6T7ipJRCgRpYuW5fNh3XuAnSwVfW_2KzLpgSJtZKEhrm5sQLvgXWJpNjdbI8XewNQdoPU
 bEWfWJbl1GG6_0GBLsbLzJUHCaW1EQnhsuBkpfctB4MGhFQDRNIKBTORFvHM5YSCMfpwmiEhcH_A
 vNXq8B9NWg5Zg506iBrLT8YBN_QE_MmZhGpjmR2lzDPbTo5MHmMrBObOfPnalpu1.gnZwIdNzWWZ
 ojH0AuHJo4V9S0A8fPEiRZod.ApN4pGRvMt3Hroh8nRle4xjUwvFKtS3GJI7yboihVAG3x_wNUW2
 xnejKx7bdbmM9d0sxd8_BlwHaPfAgEWRIdWnkR35WGmfxwUqU0lHHIxw6D2dmTNgrlpEvYlHkTlK
 _3JQNvdesPDTynVlO6msorPwSLPMCDOfIyRJi_FXSYej47QqZVfSPRtsaFJWqgjtSI_ZbIQYt4aA
 PVP5cCCY3RgethiJzUeRvHYuTfhbT_p5.gbgujpPL5jDYjQiRlN43GucDS.YYgcHXsk7IbHerc5R
 crTXmDlM80_tQmNG5Ake.UAkNZv.WjJYjAHhBkQzjdA8AmXTrY3CehVYRa5wcnzAEUL3tD2tksT.
 V9w--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Sun, 26 Apr 2020 22:14:55 +0000
Date: Sun, 26 Apr 2020 22:14:54 +0000 (UTC)
From: Stephanie Leo <stephanieleo966@yahoo.com>
Message-ID: <1640289392.624607.1587939294604@mail.yahoo.com>
Subject: From Stephanie
MIME-Version: 1.0
References: <1640289392.624607.1587939294604.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15756 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:75.0) Gecko/20100101 Firefox/75.0
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
Reply-To: stephanieleo2017@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



From Stephanie Leo!

I am writing you this message with tears and sorrow and I know this mail may come to you as a surprise, I am Stephanie Leo. The only daughter. My father was a very wealthy cocoa merchant in Abidjan Ivory Coast (Cote Ivoire) my father was poisoned to death by his business associates on one of their outings on a business trip.

My mother died when I was a baby and since then my father took me so special. Before the death of my father in a private hospital here in Abidjan he secretly called me on his bed side and told me that he has the sum of (7,500000.00) seven million five Hundred thousand US Dorella, left in fixed / suspense account in one of the international bank here in Abidjan, he used my name as his only daughter for the next of Kin in depositing of the fund. My late father instructed me to seek for a foreign partner in a country of my choice where I will transfer this money and use it for investment purpose such as real estate management or hotel management.

I am honorably seeking for your assistance in the following ways:(1) To provide a bank account in which this money would be transferred to .(2) To serve as my guardian.(3) To make arrangement for me to come over to your country to further my education.

Note: I am willing to offer you 20% of the total sum as compensation for your effort/ input after the successful transfer of this fund to your nominated bank account. Anticipating hearing from you soon.

Best regards,
Stephanie Leo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
