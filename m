Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D541BAAE8
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 19:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC2A786A70;
	Mon, 27 Apr 2020 17:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RjN0amMBT-tO; Mon, 27 Apr 2020 17:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE90586AFF;
	Mon, 27 Apr 2020 17:14:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BAB561BF97A
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 17:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B7E96869BA
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 17:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VriVcfdJyvML for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 17:14:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic317-26.consmr.mail.bf2.yahoo.com
 (sonic317-26.consmr.mail.bf2.yahoo.com [74.6.129.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58140869C4
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 17:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1588007691; bh=wQAZ2vw+ABSMpAJoIp2gUqC/PoAMxiKP625Y+8N3DxE=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=j7qWRsMbXrKFPjRLg/dQKxM2pWvnyGKVo7ExzeHYJYbiAVGBRVPthBRNTCaZ+4PbU5oJUP1KaUDVLVJMcmplg/kkfAe8WzT0+ImD9o3wN28AgLGJqlxGG1clLxx7PU6cYTtbMtKrZucLIPqoTP990a5AHpLuWwcQ5gFNvYM47ltcl/WFCLrDmOkADdMsz/1hR30otUs8rwSaUgV6PwZ6a53RlafTaAH1wiFZvoQShMtGeUWmb5KFYN1hm037oFAgh8/HbCbxRucL5KrQYDtq7jpk4rskmQRHfo0+jeyYo6QEcsOPE2ZXYPWnJZnY4sTLX2WT3va/Lvx8T6fqp25RPQ==
X-YMail-OSG: 7.YGlscVM1kstsIuzUZZUOEoxaJRrViM_SmF476HkS0gfqsj8BfyfELuwEcmTVi
 se3SiaNE5jrJhwY5jyNZjpwXSssS1LW1WxW9tHn7EaabNeQQpQzE2i3pt0r92RsACCmI7CqXho6I
 sqAwNcPVtyptD319f4m1EpwkjLfxQaWvZEIYpXdavweE5dvXBMaUk0_QD9_Aa2H5x_48.9B.xW_C
 rfh4789kuQIyPzNk8N9xpsumnyE_8zFfspLS_xKn4BSRfFa1at4K53kk9qjAk85uNBdV35pwtwY5
 X_S0Sbj7Ny78NGFat5e.OOmponBu9jWLTTNjo3hV16d.CgqkZ2G8MkMQPHGY.6ibst3pOkR80P51
 g0IAI.vMWJH1wO1XwF2K2C8nj_rAqoruz6LMSnadr8Eo7n9a.2QUsPouTGI5UIil_MfgEHEgBB9F
 5rg6CQSsB2BNxTZlYODbjpzkdsyovluuV4T0ivvAz7d2GmjyIJq_gjpB8oQ2Excm3SCOomJXda1U
 PjQklxX.iz7WKv7JFhV4agoDUOPobT2ShP6XOvlqn31EtKOKxT6NeIzrv_PPpa0PrWGGUdCHUxiU
 xhULNP.m9j3vsscNT6d.YDAymZhSjiI2xY_G4oq8sOCsQKYXdMppgt.ianp7wEmSUYDrhT9o4AcN
 Xjrn7KlRhDqTrgpI4resTzwJyPwvoHk7aUBdi_STr.jusAcoBcSjROfmkG2TR3Ux3bh52TmDAkIe
 GPZWdPiNspX4JBoFIvbqx6KBK_9PJflNjIkqZMN4x2Oc88XXPPk7E0qgz62Cxp.DTDISAF6yuXJn
 OzuIu9gDsGPRLc.gK3TzGdv90pYnJ6MRp5AveA5mfDTLUp5iGdXTliYATYVGwv.dfVHkBiPojvsy
 FMUFtnL9U1nOx7vot7BduAoR.VPL2afISFyLgqkMNbKmstEzGfW.qikrKkdzO_bzEkIDbtO21Jme
 qvr88DgHy6W8xC2PoJFUltNhbp3AKENS6u3A2VLSYFJlEH7H6i0wV35qYG3B7yB58mv6z7dJTRxy
 9vTvqRf0Q4nEvJjpfguVMNCUKgmZJwBxTb9DjGsN9YKxTWjFtdrZYbPYkTJ26.M2Vne7OqxwELL8
 Xd5jOjZP6GG8.7kugiyhgBoMl5Zy0RvxzLUe.KVFjrgHdJNK6iIzwlFMnIB.LkRbp_PrhuDSGD_F
 6kOuR.wIO70Oo5KEvqcFfVRz2X9rWF1_.7brNHeDk4cveWY2oPhnj4MjkYPG1stROmMT8DJ9Fdgc
 BeazHh8vmAHZmwleaq2CQEoS7JSco4j0BrGWTSF_nPJ69bWs1__WzSmSczavZ.eA_T6SP7mxLR9m
 sJeka
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.bf2.yahoo.com with HTTP; Mon, 27 Apr 2020 17:14:51 +0000
Date: Mon, 27 Apr 2020 17:14:49 +0000 (UTC)
From: Richard Wilson <wilsonri_richard00@yahoo.com>
Message-ID: <1627463450.694207.1588007689379@mail.yahoo.com>
Subject: Dear
MIME-Version: 1.0
References: <1627463450.694207.1588007689379.ref@mail.yahoo.com>
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
