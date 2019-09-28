Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C623CC11E3
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Sep 2019 20:58:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1493E86742;
	Sat, 28 Sep 2019 18:58:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fzP8boYBziGw; Sat, 28 Sep 2019 18:58:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8135D861D5;
	Sat, 28 Sep 2019 18:57:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0936F1BF291
 for <devel@linuxdriverproject.org>; Sat, 28 Sep 2019 18:57:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F2450861D5
 for <devel@linuxdriverproject.org>; Sat, 28 Sep 2019 18:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hI0SmmGaAvPJ for <devel@linuxdriverproject.org>;
 Sat, 28 Sep 2019 18:57:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic312-21.consmr.mail.bf2.yahoo.com
 (sonic312-21.consmr.mail.bf2.yahoo.com [74.6.128.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 26D80860A2
 for <devel@driverdev.osuosl.org>; Sat, 28 Sep 2019 18:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1569697076; bh=gYf327hTZ5oy2Nwv6GcnG+WY9C1Pm43n1pS4vSoUB00=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=ky9GqAojLd2SPswowAP0FWQR01XFZQ50ItroWJ1pXg07KYF2mg/xcnzyTVk4rk0IeTNOghQqdaPxj+sGnuO/Nu9VTsLpt6P9hMDCgSq4vINDXAmIwHChzoHCkqjJwvE96+Yo3FrLA6sdsHS14d+YxWs4OroP55drbzjNI8RuiRreUWxU/8RBagcGLToU5nYH0vBzxGEP5SSk3lX0PQLhDjzC/9V+bnkPibQSh/nHm6XgJ00N7AdqxCAO4Yo28qIanfIadc+s1AMG5uAc3iPAyUFmazPkgyN4ozHe22uInmMUfqYuuk/OEv9jdRqgu5N7YPASziXoFi+L4NLyi5yiyg==
X-YMail-OSG: 0vP.7EMVM1kmhADuuiF6ZHag_7KP5gfS9d28Kk9Xax4MdP704DvjThSC5tVec1w
 rGV_w.mnOuACxV2PCPxnZQuSTW2fHZPPJDR8nzjnfE3RfLxzauWbOC1eTt7RNxZdEf13QFJEEyCZ
 uhxLXVOv51FLZP4mxYplC31K4nKYCogDbzdn0QeYJnmQV0tEWYtPxfmgVnaOhNxCeWQ6N06UHB3e
 Io_Kg12.fGsv8ANzf3OVgfF4Klg7ZjI6n23.bMjrUFxvtEwtSyuD27bJkcV.PnEwWizZOyCXXgeM
 DOuY.8B2cj1ipasUItnKXddgiBXPCgxEwIVGkTS0kSvqZGsMeCLVEeXdXZ3uLSfNHdiAZ2ZWvxaE
 R7jrDlcOQGMVs24YGp_EhEkKGh2_UwwqpGOtxc438yWpCHLraL.8.G93HgM0bupPCwVjyMcWNxqE
 .YYQuMQaB4QIOPTcsNIp2dYkJwFzzNpuxlpTyOP_n3nJsMyXNVwFzam2lDm3msfjj8m_OsbN_9F7
 ZLL61K5i9rLYB8RER0ot6wVmWkhd9SC818ewhvx2UDYARKrRlSeufiQEfPVMsr57trJyDFCy8gox
 llMmKmqKKB_i5LcBQ2Q4kSTv.a_SWQqt3TJ09vPG3GO7uC2uR3xqPk_TmzFtGuMPbPdIHQERuCvW
 Qv8euOEr9Drnqr7g5y6iTqhVseRrYluWYG6HFW43OyAtF6a183XPBT.K1Tj8qAhKT8uSVuXOQJIo
 UGxxreENnTyFMQSeksc45cidDVs3HPBPFVWJdvwpyRTv0rOqpRtyYTsreCQdVq42qemjYSCDrd49
 oq.KZ5Cru2a0BvE3VJPuYBAqsU7LcJG24B0MybK9L8fggLGhZH.t.zja_ZKfRbUWKyENP7HEqaZO
 4RAOfoAsksqGP9dr44nBxXSdFvzZX.BSXwSSjZbp6VUwVoIPRwfbCqEDWSH4YiX79rZeMWfWNSML
 6tqfmE8XMCzS1JjpZLaNTaXokvWpBLwf8U2Nx9Nc52c1X73ICxTF4sCa8yVn6ki9VfFmbk6zSEPs
 oTFtRRBYVOBAslBYu8sWFO1EuILf4oQrGho_ix1K.8M9v.Cd3_k3u2zhmLBW.QFZJrpFfnkW9O1_
 0ar71BLI3NUMfoEdFFq5U91UQAV0qlPva6Rgxcq9HTyRaxqyUjruZ0VLYy_QCwlrpK31IeRXWUq9
 HbBdciTlyIeIpe3QLd.n6SVHAWhHjhcHoqf.iZ2GQQXsldTFijGy8hj7ZdzIZKkxOA9TkUmWtKDb
 CQHHisNz_4OpY_.4QRFGrbXsKqA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.bf2.yahoo.com with HTTP; Sat, 28 Sep 2019 18:57:56 +0000
Date: Sat, 28 Sep 2019 18:57:52 +0000 (UTC)
From: Arthur Adam <ah77900432@gmail.com>
Message-ID: <519594519.483689.1569697072316@mail.yahoo.com>
Subject: With due respect
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
Reply-To: arthuradam01@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Greetings,

I know that this mail will come to you as a surprise as we have never met before, but need not to worry as I am contacting you independently of my investigation and no one is informed of this communication. I need your urgent assistance in transferring the sum of $11.3million immediately to your private account.The money has been here in our Bank lying dormant for years now without anybody coming for the claim of it.

I want to release the money to you as the relative to our deceased customer (the account owner) who died a long with his supposed NEXT OF KIN since 16th October 2005. The Banking laws here does not allow such money to stay more than 14 years, because the money will be recalled to the Bank treasury account as unclaimed fund.

By indicating your interest I will send you the full details on how the business will be executed.

Please respond urgently and delete if you are not interested.

Best Regards,
Arthur Adam
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
