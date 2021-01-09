Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB7C2F00B7
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Jan 2021 16:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8EC7D20500;
	Sat,  9 Jan 2021 15:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iWMiNGU+mikT; Sat,  9 Jan 2021 15:19:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0201520031;
	Sat,  9 Jan 2021 15:19:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7CC1BF3DC
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 15:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06B2486311
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 15:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IAenV2nwySq for <devel@linuxdriverproject.org>;
 Sat,  9 Jan 2021 15:19:37 +0000 (UTC)
X-Greylist: delayed 00:10:01 by SQLgrey-1.7.6
Received: from sonic309-53.consmr.mail.ne1.yahoo.com
 (sonic309-53.consmr.mail.ne1.yahoo.com [66.163.184.179])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E75A886257
 for <devel@driverdev.osuosl.org>; Sat,  9 Jan 2021 15:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1610205576; bh=VVWn/BkQgTU76SomMc0Z1TZAfBF6oRT+4/ATRvHKfjg=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=Yk6n2Mg6bQmhA57WdIqVLcKwSnGhOn9k5mn0UkZugsUYlZPDEGbbB47rhBlkQwrnYbqUbB/HQmMYyaaYoDLt/apymHsUhW17fUqryAdmxSA4/Skgg8mhzX/8ivBxxgDdSidGQPaYLm1d5Ya6tVFEmC8+3crxOmYH0Cpt9Cqh9h7d7NysUnVP70bPtFfS9LvEAqA6H/T09dsKCXPUGRsH7m8IyzRu+pbrclILIMrrL9u0c11NjFwYpWSIoN5MsNNdekptCxaUIl/vR1cJQjQ/X9LYhXjnHmNnat8tADmggkPZQpPb82CSbTj1DDLgMXu7c/f2tqURqOaw1LMMZxf0kQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1610205576; bh=xXTM3IzvBny0K6Hsd7Ea5Qi2uEq6lnq0VU8+m5ioELF=;
 h=Date:From:Subject:From:Subject;
 b=Z/4BLACV5FwJNY4SikA3hbd0tgA1ArfZkNNz4tZ/xoDoPGP3Q/lP0+hFuE2GCtYxHSopN7TC4pTZ6XYa5oCyN+9wsWjdyqmXDK6yF5f2hhr0N3Y1dVEQZ074589IxJd1DTi/ZTIA04SS+NQyHefe6Vwd6SvO1lHrO0zr5z27L984GZVTetDALS6V6/7mfCQvuXDnt5Sgb7PkVE9y0mku5Vm+D+Q7Vpumn21Lli9khSnem96n1LfvYpMXY/oXHRglZby1YftRYLN76QXn9fR37ugWHA3maOMfQh6MgovHv/XDxqQ9dB1S5SQeHXUSJTcfZtP9LCfXDxlBQzoij/DoAw==
X-YMail-OSG: O8fKScoVM1kbQAGYDZeNERnoOlrhDgjW4YiKMc3FlojFVyai74.llYRik2ktKo6
 rxHOJ.Ie4WBS2xtlySKiSp34N9bIisAaZzLnV3eTWLPu.Twb_xRVZR0CdVBL132FpKDzBXr80qVz
 h7X5qMLNdjhR.WHozRn63lkQJXcr48Oro9NRk9dVcwnzI_np5jXrT_j0RoQ_bJc.78YzyBMdZ_Si
 4vkTEDJFE4Cu2DEMsdv4OihU9UKZAJOoh7IL3KFqfjvi5_woga10O.bxJExOxfMgsjS.IGInlIuo
 pqESSDtSFlMChyRvVzU2K7rgdq20_5zrfbqk01JAS28AxgyzYPNzdXyCTBODS8hUX8Cf4GOM8xth
 go7pOA.i5_92ExlJIQ9sxVxo0RdzsGkYWn9Arc3HQsKXPCfq5Q18QDWOxy8UVFxZfhG4lwHwMOzo
 i1CzyaP9cLfNiTO_PN50DDHLUXdPwPRTaCIWygbZoatEHN5DPYtNvvkodwFe_S91A_uXMzwJk8Bj
 ich8n6e7YSAjiL96p7yuauzkx1o2rxHQAgzVuPq.f.HPoGHL_PA2iP8vTDVuT8AmgdeMOcSWguLQ
 nmLNnww1pJha_IlqIMwej84k_iwkKzlF7oAAmOqGKcdVajNkcIS6VY8Tx64Hv6CNrAXd0NmNdnJL
 _UEmwlNzvi79FI64bb4J_pNPq7zilWt1J7i6Jgg0WY_TaQeYR8LfdjY1c26liMM3bDd6giqTYRU_
 RDvxVH5YoxVZFd17O6.MMTzWBQQreKxmjqpKOCg3OLwzdkbP2it0Hs4kHCPwxE4iw_GQ1xIPwjpO
 8tvDqK9ADdLRLuY_ZAcBK7b_7NAneWLZJh510lDVk7Rp5UEQUnT_5WzPV3d6mGpl9NkyTVb8GaDN
 ADSNjU.4whQIx0ssRmILNSit05ffEfrAeAe6fi_0rPm5wAflDcYOI35ORYuZvP5BpJ5Rr2NT9Jzw
 k2eCHJEwyXdYm5kWzlWBwAQqLU_Cn5DyCwileBQwKIlIGh4.l.4_S8.SBhUcX65LQrepQMIz23WF
 juoFcCIDvOkhb9F4qGR2cjjRTP0m.sZg_Vt19c0_Tlvh9d7czcQTC5PcxfCzDk01otjurmkj7_Xz
 h9GLIGLoEodGBbggBhGoJ7GD3D0D3sgOL.abRy5tI_cdU0JWMyFpQ5FYU0iBMoKoOj3dlUdXv5Hk
 Od19YQkqmjoEn6SQaJVBo.uyDP0I0pnbxfjdMgG3XDzRgf51EW0K_rTDYvayMnzAiWB.fV.rV5id
 k8wRvv6ysDJh8AEF8l240ob7.q5sUxTGxUKi5xCgWhjF3UMn74hw3sxUa20NGhjkfOoIam0U8fw_
 diNwbAaRYuLXMIAgyClkiixkrTxvxYZ3Rd2VGAy4YwPSDW_tI.KzgFuI4UWb7UZOy2yOtEkoqLp8
 nx4P7bATQIbogfjVp7nG7IFsuGgRVIqFpLhBKiZdcJUjSiI7vb7zXAs3klMhy2JLnLevna0FeaoX
 KM49QbAhFSStHXoWsdkx2CI8mskB0c5L18nTHPF2AsW62qnkQpaOcfeT9bdwH0UmHZ9dFqPhpyve
 9LtxY83RnmOg2_8Y69zOUyqmR9JBsns6dIxJSYdFX16sL0PtTMcOR4On1o5PSgSBtrrcFZObq7IN
 NQ1jD7Iat6PHzIgGnE5wl7rZBKodVXi05OQTZcUW9aG0yIr06DFk9jFF5dnUqcN9Mn2niaFY9A6X
 Ul30wkafDkkn0xKmF5z4YncJzbOak.1_punDyMRyCQOnPgqvw5S3bC7vrG4jzdUL2Pd20rBx04wS
 BRtganokNL8.ZSUYEt2ErhxDJwLCtbMv09HKcW07.IF0.Sf_6N_4dKgZqWjQOSvjzxOJQxuKTT5c
 P0.m4jvO8avg5WIpgzjz_6PueeSmfZy.4NxBS99hcW4yb0y7aOBXxXEfg4bzj4DhDzwk3ZQ3swyZ
 psTpLIQwhxYZSkUdS.i39GcIdrMS5kyZ2LIXjImQuaf2_0RSoKriCpvdDCavscINktNhtJ6tOvky
 RMD5JZwEik08xtv7o2vgOSzLlOIidCU7ro58Dkq5D1Eg.0lOBwF2saCaRogXRceQxjq38U_0WSx7
 3xDyHIXlQxLBK98MyxMbzuf3ho5DzE0bztVj76lPe7dN.NdplI1XHpuac.kd1gLdTykg0fgOZIGP
 bJ8KUstcdz7HTxA7jokjGzeZAOvQPq7aiboqN9H3uY0O2GvU5zW52rhpj9DHqVRu1Krt6._1afKa
 T6YOHWP2QtBOGI7o0EG5nwxIqfCh5h9ZYCv31De3SSpNYzNjrdcX.rwX.cA57gjWIi8FNm9dskeU
 DWlfwNjJbTcbrhIA.Hhu_Vx2T1Z.sHUcJcxX7D3_mZbcjHZXMf591SQaWGrCQrF8pJa_nQR2vZJB
 RNOTlH6idW1l9ExJJbcu7mdEeUcLVX31qFElESjEI.RGMnCrf0hQ86oLN6uwQHuV5Tx0.l8hSr8T
 M9D7ykg3YZbV9e4voLDAcs_mdTPt1C0KpFO2OjQTe6bpoGJLP95CThxnpkJxZrXG.IUDcWpq3e._
 d3BI05gTnH0ZWD9QOkAG7bLORpJgcR0ynhnnV38a7VumWYPX3GlzUcNwGj00npRatGDzcp3g7qFw
 hh2qNW0e_NY4TCnXTRuQRgZKQwYU.UpD94K8DeYQC.weHZtJYgn5XppFy3vTk03xeOPbJ35acDVZ
 V8mYC7.JXV1J8DJjkJ1M1vb5Yw_6d69y.xND0RtjYgrjC5rbwSrUp1BdRafgm77t7xaGkPzZbduO
 C6Evpa.AKq4.YZNoA81tc_JW.4iIEW0Lsdhuz3lX19EpXtO516HeqygFwnKCog_uXBdv64v6ebop
 q1ueQnJqHuGVlVdei2sQROQb5CfTD9oBOwRwK6jd191D_nZYsL4NFiz.L8eIr.aY7ojCSn6sW3A0
 A5sz.00p24gdqzDtWQxzk2x0boufCpFixp0ztIcno.4OmYuZ9NQoofqJ7kjPjXG6qpiaVps.4w73
 TDjqC6PWF9h.voyY.8CUzlGemnhxIxuWFIsSPSPOvmxbPRkb5Wgo2U4lz9_8XW9ak7OKxRQgkAWY
 _pJuVXaL4y4hBr1dSeCudNVa4_JhTe92CIuxA6Tnr5mpfPXTlIp9jnkuoHduOr7Mp_N4rYW5J5aj
 Q4kNu1S4uNZdCE2D3lZqlM9VGztZyhpz370vOBuuP6vEHHTUithbOhi2eGz02CeFCKuU1IjDgrAS
 YISCAx1Ozx1kXgKLdkY9NBK5Ef3JSN8ZqFdKtg5ULIiI8_50udxyK6aRQ3huDDMmbhgy97r5WvUm
 OeambXMoT0CzPvMHjcWXjaXTAm8trclq8hcfVFo3VFe3dzOdg4JBHBXWLMiQGiH81zhPZ8BiQ9Yx
 iVXe0357cTB_3fZ3TKMRXyTHSAsKO5uPzzBuORkmdDPS3oqchM1HlMiF1sbVDB.K6o74WGIzI1_W
 2z8c4Y1ip30nJ20gBuxGStKw9sATQzozbhuLQ1na2oQ69aUB7s76OogH7Np0Mg.N34zoGB8BTn9r
 KqJSPt_AvF4Atb8dkQ1Lcj3OkhLsPCAmcWZ8gIbFfEq0VI_a1mEVPj9AKGe9pcZtoKLbGOUb3I7m
 Aw2JcNttNbZbkGJTjva64Gnd9Q3T7VlbVrGwxga_T0nn4HcJ4EjSzD9YPLI40oxaLTpspiy0Ltxy
 ygN3DDpdQVe_kSJtEC1gIvzS6YTTcMaIhOS_efcJUnypgenkWgqozW7vBeCXZXljJNH2D6A--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Sat, 9 Jan 2021 15:19:36 +0000
Date: Sat, 9 Jan 2021 15:07:32 +0000 (UTC)
From: direct cash <y42@ghafo.com>
Message-ID: <1399976391.148441.1610204852751@mail.yahoo.com>
Subject: apply
MIME-Version: 1.0
References: <1399976391.148441.1610204852751.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17501 YMailNodin Mozilla/5.0 (Windows NT 6.1)
 AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36
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
Reply-To: directcashloanssapproval@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear Valued Customers,
HSBC Financial Services are currently on a promotional loan @ 3.5% rates including: Short-Term Personal Loans/long Term Personal loan, Home loans, Debt Consolidation loans, Car loans, business loans and company loans. We assist contractors/farmers to acquire their own machineries and also finance the purchase of houses with low interest rate.
As registered credit providers, all our business is carried out within the rules set out in the National Credit Act 34 of 2005
Kindly forward the following details your ID Number, Full Names, Occupation, Monthly Income, Type of loan and email to: (Mrs.) Margaret Adams,( dcapprovals@yahoo.com ) +27(0)81091-3691 Online Loan Applications Consultant .
Foreigners and blacklisted individuals are also welcome.
3. 1. Get a loan from R20, 000.00 to R10, 000,000.00, 2. Get the cash in your account within 24 - 48 hours 3. Loan duration from 1-10years
Regards,
Management
Loans Department.
2 EXCHANGE SQUARE, 85 MAUDE STREET, SANDOWN
SANDTON
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
