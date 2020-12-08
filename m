Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4332D205E
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 02:54:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 057478778E;
	Tue,  8 Dec 2020 01:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qJeHX79v3lCb; Tue,  8 Dec 2020 01:54:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE1F286E8F;
	Tue,  8 Dec 2020 01:53:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F0D41BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 01:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B5A586E8F
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 01:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uzZWbXvFl7pO for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 01:53:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic307-3.consmr.mail.bf2.yahoo.com
 (sonic307-3.consmr.mail.bf2.yahoo.com [74.6.134.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6801186E8B
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 01:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1607392436; bh=5YLgrmmw9m+sKzPxDNVWcpKGfVmpcHCuvOPpLM6AIJg=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=e4BshjGnr3cl2xT5IRJODiftB7/Kynxk066bJi6Hu2PUBZtqBn9GnzXSZe3NA9mpl7wy94NCA6MnPgw6U0bciXYKhSaM7nwNQHHozOdc8Y9HiV3md//mulYYiKaUXwyXweVDd6ZkwjfntbExVfNk9/l5JBSL4MnG0jsQ4z2+Weeu0irUaQyxu9PmEeKlIe/vEDFjgvwpVINv6y9JQL6Rpc+blNAKnf0+/0Uwpo4JQ+hZ0P7rSfhp6FkMKGUM1M9i95K7z5dPcxjMQzrnUCkc7AxFLQ/NwDCpE19RRbwu0srP3Pfat0n4Eh4eVi0pGfb0mLomtgbqwprb2dmv22Zd+A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1607392436; bh=FFsXYKE89LuB1kU6yoOfYYgQpA7okC1hm/zs/d+uPQG=;
 h=Date:From:Subject:From:Subject;
 b=KC/8aSXMnf+Nlum9erVnDgGX+JDWIYeRHRjeoT426b5feDP4Q/A2dyJN+1vB4URkjNlzt3Q+FIT/s14hdzMAV7L3H7QMTxpI7k8aZC6AHQIXU58/fWwhHn/u3Mbnv4A/ryTDQ9bnbdI29GNOFgbyhS1ZpNlCh6DFwrNEfyl4CScDEXWTbla5vd/OaCKzEcVNEIu9K9mAPuGrL0PPIwc6BKS4CcUzRg23uJtTdKR4eokRwwCDtxACwFqnHEWq4NmRCDChIhuuIy43MHuUFf0a6e3Uzt90ccu8dzNzflxWyUH2cBKtfxveR13D8s8FaXDnTetg8nXEsLL201ORDRGwpA==
X-YMail-OSG: pi54g_oVM1mGlF0SEiyhuIrMdnjWYEEVzmXGMhErq_yyV6_zRCJDIMSX.9y5PC4
 OMGVhabzcrssSAHt8lxTDJczNnr35uZhPvlHsVizoNp0M_Ltv4kOaAtvAaoa2w00z0LGNvRFYt4d
 kmSZ3GWhY4rt__UgaunytotJXnE3itUjWG6scieJVGo1MDbJXPFYn59D9wFuVited6sIjarI_snP
 8.DDenFsLK8lbKgjqrY.EtdGlvn6pwkPJfsKg_mj96ls3AJkaXtKcIiGh3th0g77SDr4eoLABy7c
 Mg.ETm3l.WF5w1GvTCZSDWXUGwlIy39TzRfGKBFZ0nVF7xD4llDd1YT_Qogzk_kp.toJ8XBuWLgv
 uRsnJMqdzfwVJ6bhdRvP.FAuWNjqcs7J.3_7AfZpLYomn10C7IfB_C7pLhIGWMIElDQmEoKe9J7L
 M14aNvpjxiq4LB1dDVammqF1Iniexc7JCx6M88.OS6ZhI1rYnO8Yb5q5DPqRLTJbbaJL2l6rqDgB
 pTVpFdhGgPhzXRBcCB2eiQM.XTBVhGuOfyNYh19hcDlQWOX1HI9LP42_fxOpjPIhZzQelNspj7KB
 NQ1nsQlQNYo4TduamG_fFvA19iElR_n.GjlRIEbjGz5ePogeLd1lhfWKON9D.6o1HO_kyysaDBMM
 4xMs8hqov4dmQycimlJJSPH_kMEfatCLQoMNlQuESZ9iqpyawISU5QpOXO46Rpw.XpwLy8TKtYWC
 rw_PSI8PLAWMJrB6d3mzapidFjujRhhKqt4HXRPkk0bbzHk6ezhkBt1CtnTUewk6vhQIZ5c2Rszs
 CEDKesgEyX3eHbWW20Ta9pJTtipNhORCi9pAqcmj9cpMg9QW0nbgTr44EdolKZHGURexI2vgIuph
 DHR7Kg1hBomdp19dn.wZipdSvUyvbftrZY3LyvCRoV.Wx2BIFvsa7sOnhGGA0KPq.dc5hC6Es42Z
 8ENhCyzJ8F7kQwp6HWlMx00_6JStOXuzfAZ8MZutkwYGLyUMhX1PrKqYwW.br0f5fpZh6zvI.B3k
 n0X4Ap4isN4bZI45mxJIfZ0gYqWS0KJKBxXOLIwMsprEKbY5Y655auHdTrXPcbKjV8qC0Su2p.CA
 a5SgE6IPB2vDMSDIJ6.VHZadYpg42oHywv_jR2gMSkSUYZprY4ZmK0j_N0u9neOWBlJUbF2DMsdD
 NH3yQxg39D.IfPVnx._0MGR_FK1ruspnnshKDm3UFUozTQRklGofQtdYDuP3VCptjjPhpmbpy6kz
 nALqvR3VU1IHP28LsSgdiTZjyzJ4k9RT1NtZOS7n6yGFLLURQ2uSBAL2asVjBw1._kSUpgAhvwzX
 fopOvquomkaPJDizIEJy.fri2z.sT.eyO4NKGVnLSpwt6vFitA.ZQIzEyWGTJwMU8wqwp7EFLmvt
 9ut_3iBUX036fF87Ugt75iWsD.Ux_ODyt22r_S6n_5yqgwWImBqv_aMurw69MvFLBXZyMiINm6OX
 cs1tWqYiq0YnrWR0Kc5jJ2cRVwlDqQmAI7CMnUehDQdVp8DrSe.8pPyTyKaBg1W_qW1LIUmY_bcT
 ksCnj7BvrmXEe07Q5V6CMXbcE2chePWMHt1jCIBh8qzaoopwxZt0RxjFBk1bddz4HXS14dLlBqju
 q36nF_zljXYMsqy41iN9UQu0OCZK2ZIFbt88ViFBV.Lb72CccfD5HY_kxrDUFqZixKXbd.DMhgSF
 kQYTX_oS8v8rKs5V._GNmJoCbZjsF_lBSy3TXtdHmazyPuJOYeSLAonAeE9JW.v.Duy08cNTYZpO
 AWgeRfXR24f5jq3GHyKE86u4Who49ndwQSKWaXfkJ9yC1fJ0omfgtzaNuhHamFVGe.0AhyrkI3_H
 qxi8HrRO..PsVWLMsjs0OjZ4gI1HOpp7ZkQmQ1be6xi5LrLdTVLpWaZXM6WX3529ox0.dHbB09B.
 2gqh8ULx.oPeI5eGL65J5p9spL6Mw3o6GwXkFvCrJ7jnP3E3hRbyKqPm2y71qbER.watitbm1yrF
 wGvGp0.mrbZe5rRZSU6lE24iK7qgOc48XFMBP7CZxUsUQ_zuSjo7M3puNe0BKI5nOlikg32suKbq
 8WGpM8XHX6Hvu2kdhUy9zanosk9ZeIykU5vXvDtMc6WKsCWqJHdCC20dLhllXqmK7Z4.Hv.Xbd_U
 fOXrqoZyxtPst5PNaB.xkuWgsNkKVMUgTqUSI7S9SEAnIPdHxfcbJH9jQ5w8TJ7ZGrcXBGTuOtmA
 57p_hWTSxygtRZuudvqtAKcmPkKres8VZQVBd.151gTsNG_I_nIpteZ9c1WmZbvMgssx8J1OecGn
 eeuFCPwKW_jGmf.TJALWCnVefJg69FQT2XOpeU93MYzyO0B7BaDT8Lx2eJEy_xosqoVtF1Wl.dmO
 5w58FaSqXHutwoAzvHxIAMVlf.0qTBknswJLCZP1H_kYq3gzK8GUWtxsjFF0nLzTjg7fTn50sZ.V
 lz2lpe7XH3ogncfhpC8ziqTFrDWCFELo4xmia.YG0XIWiVVdgMhoEM4Hg58tp0Yh9pUHKFRgH17v
 KiG6Y09agXbw7dwGhEFllSOuYjnrIBG2.7rXl1dlTvXWhw9yq8dBbBGLH4zhIwleQykQlsKuUGxZ
 tdWk1V0Sy2kHkEQ7iffJnbcdz9YRbK.HEPDuCBmakAXBSivETlDYX9okkPOjmmUHcpMs0I2o27RC
 DpTC4mv4PZPWXEc5bhkdBbTLhClUxDvI290e5_3ndv5FflHdBTZNXGqs9aLELjknbrsxZYJDzQ.n
 SVAeV2WA5D9.xYPPIEWSJsbCzbS..TTIsO_xqtEqoO3QxaFI2RnQ5N8C4r2s.SJgTySvfmGNCmWX
 aE.t1Voco5bB9qG1Hf94s7mcVsBZV0l1ped5qyoKTU9zRKVhnL5Ne529XLAViGGjUF142bIPmC9Z
 0RohkRBAaYy12dMx46vET3YnHJC4bl0syey2plmlAX3SoufEM7Y387r6J3hB.272A5AXgUasHOM9
 IdDB36.RlwfH2TEG3f0SLxjFB01qBAvVxa22wycXLY4vT.ud06kmjgyJIyyKb2j0WxAKIcHahqvD
 V3Cf2Ti_iJ.EAguPJDXmHnDgSP2TlmLV9LaDNxcIdJv0yLWwzDHEB_FRWDa_Gn0RvTA5_oWLFa7R
 NQnCsW0GPGOxNh6jM6fLcB0M.oJLQ.97xz1RCqaaz_JIu2Pwp1Yt8m1p8DVy_X3FQoBEBW8rz_lg
 hPJWgKcD2bewftl9kN2FnxGvnSd3RT5RZK5dr4pxAgP8PipUH.EyoaBL1qIQBUtVRxq_TdTExDZ_
 SuVHPVGhkl9g_ikskuUc9_kS9YT.jNCTd4ryL8gOWuk3kJjce3nM94Y7v5YPS9kC4ttwgNCC0Rz1
 BWHSpWGtn4nMRZSnzzSkbqzqbw9ntOrh.BR3_Lw9uP95O2Cx1JYMooRY9ak7mZUz0r7iyijxSOqj
 qbvDCS2umOGyZyBXK2cRkFRxsZrR8CPvsdE53BgN6MBmfI9jz7aONJNfQP4kUwQUXR6Y5ofD6umN
 mAlvOkZfWjyH5TaojwaZKJu9.8xdRKVSloTbsLiiV3Jp.5uyX3jJ6T3SNe_ywLoSK25cLHlxWPNN
 rwYMft0UjjgALQl72wPHNSRTWoYEM179Xtls3g_xlvGYm6fj2CliZgacOETTpZBgTrpPb_KmJT2F
 ifIlU7VWPGS_egDUYf9Dcx7muX06d5fhfsf8FalhAeBYySXLsIyYY2f_lxe_CwbJZ4ZeY6STEsv4
 MMQIue9c3qAHOenfzC_RKEGn_nDwediVC_7LEi5RZNCEa0_6_ldItqP1DcQvkhtmg36Du.3RTvFk
 XvplTilbsTOUhucAE7380QjmojRK.z3096atExmy21rjnSS.e.NS33mSaA5mD3LhJbaGnQSiA0aV
 ceBm_1cywrmfbPM71we8kERWvR.F6zsKmtiWMpz5_2ViEKRoJyubd3AstGLU4ve_3SvUCxhtOBK5
 YMVuPzSIe0cq.5gOd_nhMp3gKRULx9.YvTEulXXQZlsJkVmxTSUnktarWEpKwASJf5TtTlnEzJUy
 MnvSGmmcFuoveyblVXzRWnSbYjvpIWq47aSzR37JktTaq8zulwxJ_w2LPH_HDJO9B2fqx9.736HU
 rZ3QFRX3O0L45IZSrDkRnLvwQHxVLSUlYHftIYAk2cDGiEj46JYQaQyDDhjYmCQySB1Uh2OWy49y
 2O6km53vQ9hnwZ74EUJtkao5rX8RU41KomqEPLVCghZ5brHarnzT3YTxnUkxhCnGtdXxdfiU0rGI
 9HGySpqovd9omXAhb.zAM0xpoH_ndRthcf7lIl.Sdm2Nc2vF5uKO1FHc2TRu4zUamgLz6Z7t9H_y
 Rid9Hyq5bnnkud_YIxe4T3Kqe7q.ZuEiPA9DKvba0.MKAvdUALtcxbQhhoOQ1fQHwf5QcCGM97Jb
 KUMiyhEGxBk_q9MFdw63uhGd3upw2Y2NHK3y0tMQNtdb_IodgVaTGZ3j.rDDGAp9Mh93NIZ_sgL3
 sYHeLdyUsOy_eKc.AfC.7TDm_oDQT6PriOW.kriT5hw5_c7RuOfC5fLxNKPUose3Jn_SQTnZzgrd
 fsw9IigEpY4Wf6IUkljT_PQAQSZDIpckRW8ZIDyGUCaQbEvvGda44KTY9uTU4B9IlDunmQMiNc07
 fpvGxeWN.9Rec75L6TTKHf36r_4YQ6U1qwjSvLmEfQyzLbipSZBkky33uis9f6yev7jkmSYAOLrg
 sg07ojbNm_rtITmBOY9QnVIoglPEKORAWqmJ35BBC2uqN45jYG4earU3FsO_PO8hcH4NZ3aUIHdT
 C8YW3aue5.fUg9r9dKvMLJNpGujuTjcYr62rkR3bt6v2z1zgiZFat6dJYnYjw9N16SEZX4mVDFEm
 aJhzsxra1x.cRa4ju2qbcVY85yy.31ENgyTlWh6Pzj6e_HFawnekcYyMVPxuJD_ocVid7YnNoq8B
 ScxJtVFgE1kAxq6BG37JxBxdR5Z7i_5jKpz9wdFcYSDwAsaWyHKJfJGoDIHlAdthDnu5hzDDN6m6
 0nuTJYMLUI_RW8fet_uGj6rKrHAnPjDQv_uWYtB7blCAuZ52ndgSSNc5RpCRHpg3jAsTOXDDR6iA
 JTNhZ
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.bf2.yahoo.com with HTTP; Tue, 8 Dec 2020 01:53:56 +0000
Date: Tue, 8 Dec 2020 01:53:50 +0000 (UTC)
From: Khalid Amond <khalidamond11@yahoo.com>
Message-ID: <1893193111.3474134.1607392430025@mail.yahoo.com>
Subject: Gooday to you
MIME-Version: 1.0
References: <1893193111.3474134.1607392430025.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17111 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88
 Safari/537.36
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
Reply-To: khalidamond@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Please i need your kind Assistance. I will be very glad if you can
assist me to receive this sum of ( $22. Million US dollars.) into your
bank account for the benefit of our both families, reply me if you are
ready to receive this fund.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
