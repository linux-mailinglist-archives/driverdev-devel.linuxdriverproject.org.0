Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7311BAAE6
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 19:14:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DAF686B67;
	Mon, 27 Apr 2020 17:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MRb95UrqgVIh; Mon, 27 Apr 2020 17:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C70E286B17;
	Mon, 27 Apr 2020 17:14:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0002B1BF2A1
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 17:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F1616869BA
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 17:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CbyvOeB+50Rp for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 17:14:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic312-21.consmr.mail.bf2.yahoo.com
 (sonic312-21.consmr.mail.bf2.yahoo.com [74.6.128.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5469D869C4
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 17:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1588007677; bh=wQAZ2vw+ABSMpAJoIp2gUqC/PoAMxiKP625Y+8N3DxE=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=MMGKTumR3Hm4LvYVvvw3tqzrFxtLyZ0MLpZ8fL65AcffB8AXDUFsJM+pYjCjRF1eSCTb+yKTQvAzik1CEQB3YlT+i6eyfm8+KmO9dQuJzHw5qodOD1xTHSoEtB5aGfu7rTpwgPNooraiER4fN3Qo2u0aOHiAk902FrLPw1J9s00hzllrjwntX0YxAkOnxj+q65u1XUrGiF/eLkA7DReIzGQENeqJ3LtyLAwHUdjjS+xvPms6QBJNPMfr4myKzoYiIHbSYvp+8yHf7Pe1UaDKzQ//Pgkxk9XxzWOfl2nFVrgmy+rt1ZEfjmVLZUR7fhpahpA0lp2q5hi788tBaXlXgA==
X-YMail-OSG: 3ESw2MYVM1mZft678ndA4Ou5obkaCk.W8da5a4oes0Os1pMtyA4.SPmQgQZuAy5
 T2Uv7K1zFrdhxedjGho79IpNC.y.9Bidh12xhfa2.aWM.xBXYrlH9YuKPnmjZWUO3A.2b0lqUxzu
 UuTojsJ2hg.ES_81f_kQDkSJ2_4tOmu.PNC9voEAl3ewIs9qr3YnAt6wiInHL.6rjFOgecpEoaMw
 fLKRrl0SuL6nWcH4J1NJZ6ZfzcjB0FYp2jssxHRHA0hUyvlnoMPFs1A21eLf4kDwdYOJIUcP1vLV
 48TkSUooWLOV.V87Tp_Xld8VUJJ1WBN8VhGST12w.juHSRLeX.FzWptiqkZOCIYWHAxwbzpnagzF
 cv14zWR8fbXpVmXIuFKQoRqLKfcU02OGp383B.UjqmuXw0pVh6AaEVbwRYyo.tStYzCGr0eotsj4
 ULahpbdqBFHQkOcKMclo.xE9fdJaVVcCixAzANWGpHtWzw2wRtYLIflLMgA7_eb9RwPYGiepyOUb
 usU8q7ZdJAw98GKPHynpoHbcHaJt2d0oi5scv9IDhMKulK08CA9AGsNo8qX3LOyFuZf4Dl95i6JV
 rJ2DjlbdWOrL0xyDiytOu.7hYi4EV4ZYw66loumQLLmt8XcqfpiqaF.Bo8w7E2oi88C4rR_lL2Tc
 g6sxO3ECogOo8_OyIcE2loQe.hGDcbBnsT21srVLyurcckpAo6T_CelRjlfPfB_Nsirrpf.fw2HK
 J5OyUt548TMsESKAp4SWpNutG5kshWYPfCL9gvbUAZbGugu4kBduJL2hTRtAtJ5iFTadbdh4VMqr
 aVzfbZxJIJnzj2Bp92Kc7AJzhauI1z3laoW6CIBN6sZ8URXInlrPZ5VBx118UkWK_l001KSziXAQ
 C0VcM9LysqSi8i8Vjr8NAWGnacA30Bl9sg3b3j6PgKOF7DkxK8hoCqyMTOozaXmot8ojWZD_nMqF
 UYf6d62srUd7JDtiS71BI6_5T21jHd.Tic0wPj3u3QEywm_61V9er_.t9QzsYAEzDcSdDW6UQrSJ
 _J4MVnAZYVB0mOgyWl0PnP6FN2oz2JDCMJr6E7pgCjrx6UoJq1iDA.FgyDqKkR9bGUgogunylxVi
 g4Ian82ATFjzAkqGFw.uBC8qboWIzXPc54xj7BcLPRiX0hER0qw7b7x3Am5IJ1yznU8_bOHGanMJ
 z6RFvQD0YzDfB6PNLhmk3StB7jmh54.4BmdA.8eOUI_c3W0hQm814FiBSwPahEKxHHQIDQ3zn5Kj
 D1F7As5wYryg1NEqwwJSjRHgyLzr7TSN0ZnSkv.85ev64ZNhTdGGXpxMCXkznMc8yBdG9gxKmwjr
 43XlR
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.bf2.yahoo.com with HTTP; Mon, 27 Apr 2020 17:14:37 +0000
Date: Mon, 27 Apr 2020 17:14:33 +0000 (UTC)
From: Richard Wilson <wilsonri_richard00@yahoo.com>
Message-ID: <284576781.689962.1588007673611@mail.yahoo.com>
Subject: Dear
MIME-Version: 1.0
References: <284576781.689962.1588007673611.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15756 YMailNodin Mozilla/5.0 (Windows NT 6.1)
 AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.77 Safari/535.7
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
Reply-To: barr.kone@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear

I am contacting you to assist retrieve his huge deposit Mr. Alexander left in the bank before its get confiscated by the bank. Get back to me for more detail's

Barr's George A Levi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
