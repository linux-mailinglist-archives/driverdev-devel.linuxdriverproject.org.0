Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A30D02C7A4D
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Nov 2020 18:34:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E78C87497;
	Sun, 29 Nov 2020 17:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8dt1D6MmKIoU; Sun, 29 Nov 2020 17:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CECD87411;
	Sun, 29 Nov 2020 17:34:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 933BB1BF3B0
 for <devel@linuxdriverproject.org>; Sun, 29 Nov 2020 17:34:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8D62985F93
 for <devel@linuxdriverproject.org>; Sun, 29 Nov 2020 17:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqsD8RpdzNr5 for <devel@linuxdriverproject.org>;
 Sun, 29 Nov 2020 17:34:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic307-2.consmr.mail.bf2.yahoo.com
 (sonic307-2.consmr.mail.bf2.yahoo.com [74.6.134.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D910785F88
 for <devel@driverdev.osuosl.org>; Sun, 29 Nov 2020 17:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1606671271; bh=qYgR5pn3mpwhtvVFebgfRrJOEFYsieVyZ0yx33TZy5c=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=lVTEhDvb7j0PGN2HWE5dDFxfIAYTMVmLyGkTw/6d/mtvAZ/HVJxZk1nV8sKYrGWBWpBC5CZudYzGbwWUM5s6q9WCysNkSwO42amn6pnblLAC2K7nihb7YY3s1CPj5EAGXkFlROLm7ZGIDBzqvvyus1QPDi6/TlacCgoRh3yYKDpWYxkQIjus4ThMIevFWkb5Z8oTXfJYJVSsIbmLEcsjglb9MYxM3JW049rfuVrc1gij7CAj6n3Ocq2n2O1E4FjDb0anfIDOvrpX05VFMPIpuqYhu/zH8EOcXW/QmiInJgu/TMMKzS0KSKcUFBd9739bxK7G48HhWXqyswKi/W/fwA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1606671271; bh=uFKfH7R+1viLttaH4Ydhs9eDCfYoATivwSc6HGoQnXq=;
 h=Date:From:Subject:From:Subject;
 b=bM0z2FX4aEpYUOZ0LtW20wo6/RzqJwKRlQL6Io5EjrVTvAmV6pTObjC/BnXhCBoBvTy23Wt3zNbC0jT8RIdYpNAze1WYU1G9tenqWOqxa1wARZI+FfyvrI3rJ96VUmbkU1uxX3YEVYT9CNkg08U1KudcnDEW4RL00wOdl/Z3iYZDZvw4dVkHFyrowRHpO2dWI2mCkaupUuBt6bDlvQO9qh/UzbJxwPt5sLzOlfeNCujeT3VYQw0qjXE0i1gXp7J+SSyYAMhZFbdsBTd19srjo2tkv+r5q1oKpdnBnqVRXW9eeJTlIBhXFgFXG1cCUmZptHOMWbmZuy+mq8mccrrm3Q==
X-YMail-OSG: 7VDl_T0VM1ng5w3S4DTbLZy9AO1c.fc9yQMICV.KN9yIEj03FzY1nMcJfDY7_w0
 I2vqi7fdZE41Kz1OaPjgTV2_oVftzC3KZo9Fr.k8caqLB9HbvHdQm7J427lSugxgjM0_sJ2k6tTq
 H.5KclhO1XdWWPIAnotUilD_oSkmmVLQ3Y.HQSyFeOyDCxMT22sEAH1uMJP.xH98tEiaAjBRYHUc
 OBVwe4t7x.UTo6nUofVFPUL2jXMUsLmaAq_Bm4pVAN_NJWP4s1IWFEbHS0ptmcLYI07Rs4VZuW3V
 ja9HtFx94fr5X_TU45Ji98d9KVA8Tk0kjnabMyj.gtsaMKnZoN3oMyXOxGUTu3g2RjxCLsJuGcpM
 jcBfeXQbsv.6UOd1YXbN.EMH8fTdK0gPjwrRi8PeV37gdWI.Wch5BXWWANaKxQD3lKkVhr9y_j22
 P01zzD7Wh6e2aRPhq80qOejBMK809pIzI0UMNCRKmAXwWGG7rhWdhmgVqrVHFILBXkroiok0_Kz.
 1ewxfWDKYKrJu6Yn1dmFB84fusfLIDdeVMHkmD.0F23L0dXTr6aGnIWwceJvPlZCMDAxZmQ50vBo
 ml_gngbYL0XiogLpHJhEzYdedFGj2pItL200Yt_PoeCYd84RCXrDv663mzNSWoVaqAruYqnZJBCw
 bmY1kn01UFBQp8HBlcyHfGtKLZeZswzWeO44ZVP3LR98OJaeYZ.6RoDSaqIGOojvRuDO3VLpHxTZ
 lr6aTqBzICttOp8rRAJegw.omOnEDEETzMZau0hQeBjHfG_iJCCbvruAkM2SuNhIhL3vntIN4ech
 PRodr6EAHErYdtq4AX0degk6uuXhR8wKMw5rJgofESNKW_PDxX7SvDe__RjNM3xzjL1wxjBqBqW2
 L1QL6a9zX7oeT4k4KNowRIVggZFDwVx3lRRMlqTw.RMAWqf9Mnm7a8yYt8.BjuoGh0FVc3escizx
 n_RbKRO0zeGkkJiAlELNlN91vnQE2DLzTotDI64OBoelWNjoDcVGLpW.iS8jbLZ_Rs32ZfApssV3
 WiIgIeZ_88uVCGnPWwIwnKdkckYHb4Jmurz7JWfRHFSrHBcrizZRYB4CR381jkZMZff586HeVY_w
 NnTJ6ZlydM5paxz3sSK28IT_QtfVeLNE0nUxA23yq5D7hWY4aZiVdWoFV6i5EBbOeWh.Qj6.eag8
 QtF6cC9ISidRcGT1WEw5tp61DFYZUDhH1aa2YwABM8N_QvMPCo6xlA4bzLJLIifTaalPA744QFEV
 .o89am5bn.XUQ5_WrXzy6nn4uTWAlVMzTBQJV5N190ArkKMtjhswS4EJAIyvshv1vqbej0KQJMVx
 eb6.KWPZaaeiSjvCehujs5_mb.dbfmy.EvrdNWlnYF4OsP0Bne.IHJqx0YxN73IkKcTEObEUfipV
 8DtqJhH7lqV0tsERRw5xN8kUKfdYeHXD7Zq3sps3KCPoF5oU7nfkIUrORgbc6JNRrzA6KTwlNXGU
 zNBm0cLvJzmwxp9XfAGKc9wg9PAy53tZO4Sj.rYYWe57mn2BGEUNDWN7aPd5niukbUXbRZwU1If1
 PxNNOrACU4kFsX5lhOpZYL6PvWqrenRkZ1HlbqygObLSMNqEY1DCC0F5LCMzPy4NqmmT12lGuQOy
 s8SQ_UwgmzVICiFTl4UChhdXz8lFhmzg6.08cbC0UME_jTaZDQFRS52bf_Jta8sgOIjHgBS0EomK
 bw8hUBgHE18NtqHu2h.PnaBt.CKO04HKfKhNp9Vbq80vawtdYCLmSSSnIdc0_VGnKUeAhbA3MTWb
 FQNJyPGMbxtEGaT7JbsAOTB8WGJqwBrUXcCzaYqQaSCioYXD56hlRmr6qRefqijlCwI5E4BfLOKJ
 nHFuiPBIf59l4BbxYPzhZ8fS2E9wmBk9VpVwW6JIL2wVZfTduQ0bPIVwi4jsj6sYMpS5HC94.aec
 SHe45jKA.0mujhFhsZn74rWWvHn_tRNvxsNmf7.LeIdvwzKV2TDFcPD299y4RKCZCv2ormrdyKGS
 u7I3_bP9D9UjUmUUpaJ8ayFR9gl66ncVa1Rzba1Dllhq607NNrph_Sh6uU2.NwRcngpBjJYzF89T
 pcyErXr.Z8uC30Tdwi1BNWkmOxSkrhxos1t1GxN4OPuYOmgp99VHENpEeL36s_Czx5FEdUw4Ub_W
 OedGKu2iwbstzaRp832sTvng1.9vo_Fq9D0k88ahDQlf0Sk6PrFh6J2tRV9DTxed3vXhwAMV25Bx
 MG2YBu7uqxYNjN.ayZv5IvQWzYwb5O3gRidtq6cB26CvH8_tQa_B_PfGBQYYTUNiKg0KYbJDXjrE
 iJ3ZOqigZnl6pneXx.7sUgNlyumiMppxuT7aSErYzfef7A4emXKtRnMboTNELAZSRak4n0miTxy7
 irCNpkyMZPuat99saeCqgr2h5GHyWeKunxuiZuiXg.2M4axmz.WanzdTLIVQhyibudU7hnvOS0d3
 DkIjrmjlCFcNR4_QVoAAGkk9sH1HmbivQlVpiTB3f9.7GI2X2tZlzOpaL9nyd_MS2hI0dKGdUhap
 w2W2.8jW.bdFSjKwFwFQ7Fcy07OiJpZGhdaJtzSZwc5R17bxc7CcRlkXdj0cIebFae_F_roXb_Le
 _VTxt.n2ZIE3jvTsx64O1ggaVuqtNo4WashgIYkcHXzNzItcdoN1SLaYA1RO74xNt3_iyarXk9.j
 dBdBbQc6aVUwhSWC_23YZvsAhv4G4bABTlIfZTqWUc_1WgUqJnwZ8_gOuNHsxv7joHkit2ogUNyY
 XRY7rZpHCHQ5lxF7NuKU1ydvxug55Jkb0yRS_XFXii4TUhoThxEfZEy5C0GEwtRDfN_yshu6eHd3
 C_9HcxYHRXhCPgZBDGCiNEse3EnSyG9dtN1mNr58jBMTA9dEMrS46hz3Ir8jx.cd.C6SLZQYdZXW
 rxO6fvdka3CJi8KEGoeBJkPRLzgXC3OnwuFiglpy1KBeKsCB9tSda7PVatkzQ.SGtLlBUrL.h_M4
 2AovuUHZdyp49BKj.TvrxJzFVu.rml40zUvv3WYmZq7T4lA_YJE2g3wan.o8R9h3oDwP867N18EQ
 RAX8F.v.kqxrXh9sNKc8lncjtG3ZbbjLri1km4hE9_KMl1hswthThHnrvolaTrvR2Tm79y_VrLtM
 edmcs2vOrvm8WIWwY3z.fYX.coyjytMp3Mk_o.uQapAJMAbemzGBa_IAEAvEAFR2XJk6KO.8gqp4
 vK9hVA5TmJy32BDuQtsWH4molBdjkuo_4vWJhPAmXdj1nTYwm68SX3FMKmxEaSMrrDzCE55_P.ps
 2XtWQszB_lZjGAIB8bAmyS1I2hmLW253J5WNqmIJF8ai2_xDoQYkTlvcPiZ6rkrshljFz4CBd1Ut
 H5yrcfSWvWyz4e2updsJmUF3OO_eyEx2cgDR8QQk9m7eYuh7Pvt9IQOtVyYVZ80GGCBfCbYI7Rt0
 c75CWgim6TeuPIvXHjgeqeGW3BHT7EFuUwPNMX7AdvXMAB4x9YNwpeo08ufqZpYWXUVYUvWfUbxE
 KdXpzxCZ8Sx6CL69zKffQqlmhO1jU1ZkzKOTcNxMO.WhrB8NTcXwjSbHoZbe0eElCv12ntx4Kxlo
 ArBcY6CteiluyMwRnv0Kfvyy3mvzwDvDheSD1U7lgzyWZpAo5szlEoPDQHssxrHkIjIQmSA8zIcq
 KxMBUoaqS.f9bLgPwf5hBGybZSxeSwc6c35RJsJZ7.GTT9lWn3qGchFQKwdORj0uy0GpxPWr9O7X
 DNuk6NdIgVindpFb6lSdjOFxHIbpCIcCcYe6qOlB.mZX_Ku8WRIOp5oXKdLcSw1vc6WiA8KFu.sd
 rjM0DP49hJ4hns0LPoycn382HOL5bHWEkBWw2aQRpgr6m2r_KPfv3MmnvU9BJY3SqPi5N4S6EWko
 dE1oHerJ7W_OrrRJQsfL42XqIRxpIoffJciqJLixXfXDkmKxZAgoJFtJTTCeIYxOq5m2zzpL0egk
 IBEh5LkuD6IHMlDBstjlkC_YDIbQL9R0i7sXLXtgKomIhjBHodVRZ4DrGCEPElTa6BIytVAtm2uJ
 htpuYzPQ53Lvu45wtQXUiUHR4oZHNv7HBDY5fs_WB39IGpxJoSC5GPDZI3e2GAiyRG5YaIoSqfTE
 xe0Q0ZaqBvdP7c_RFApbK9f_qlAmGj6yt5wBemBPampwyKJHfYQGiLWTrY.58Xh0TObvTAmrqGSk
 poQlSceGBbDFs..StcyyI18ij82T.HTC_6xY_THHso9UbFkcJ2P.lLVNxY0t.XjET7QQbptxDd.V
 td2TRiXD1So9t3ow8WyHPLKHVr06gVcxs.dQCtd4Z3SUNx66LUm1x5iv4I9p8cXTRgHsOD1_ZSQM
 4wfMn9CJowKq5Ls0toOBN.dy9aMU4v.t7p_.oPfJHkXFeGw1brkAGbOQhfD0cR2Q0DBW1n5pA7ul
 bOchDS7R6Q51.IRyqwmhBcSIZYNQTbpVoKXEEUPu8LyB59Gkf0M6VXuS47huukr8S3DJL8.KEWDX
 80YChXgqHO9qTjISe_2x4653coETEjVHzz1RJfUNwgajnKDnw3fCiX0xMGyJdsc8mSV.2CiCh7qI
 N6ISjiIvuAw8Xz3uy_lYK9eKQCGuLgG50.VnZB_95NWy7KDWMae78OXv5JrjVem8V68nT1Jqu2mA
 ZzSo3QIJoXLo_J3ffEptHr5k11macZ0zApAihCpIrVVgNOsikFBkqTwUscFYZqCgHWWtspIWbv4d
 KWvBf9Yr1WaaB7l081Aro9tlaDces4_vSsPHsC3rip.vrtTrpgsU1GQTlZ9fwQ_2RJX.6wxPuNzn
 I98ImeUbEymjMN.PdKrvI_FBL78PY3ZK38vA26Mu8qdEoplSkuxtuUOlrET4AfCBzxjf04ljqmCL
 oWk7S48tEXiDNVOwjaOgTYTdW1RIuoKvY13ms0sN_WIvE_aqiPLBDcuRMFUw5PVin2zZwZuPLHDh
 DGQK6QQumxQ6dCDXcx9JVPolIISsg4VA0iwLkGIKPYkBOOUaDhh1fBabaLzzy5jMtWg1nBCBQRWL
 .4kLIh7NtrtOaEcwcNYUYI7uCiH18DBDMkWgWfwN6v0Pnx7rCXqAxYQLljCAigWWoD91j5Cwc.0J
 7BmJZLaTctem3FWp8efGTj_j1.D.acW4QRH7QageZL4chK6Pb7XLQnjPvhMxkiUR8O91qkMnb.FI
 Gm7r672T3VW._Q4uCT_wd11m4LJdTqNDkR2Em8DUb3kqm37GaVQVk7A8ASJOqHH3jhkTxvOlcJFg
 ChQaJjjQZb7pJ3hBhCTTrnYNCE0ghJM5nh3I1UA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.bf2.yahoo.com with HTTP; Sun, 29 Nov 2020 17:34:31 +0000
Date: Sun, 29 Nov 2020 17:34:27 +0000 (UTC)
From: Mariah Blanchett  <mariah_blanchett1875@yahoo.com>
Message-ID: <744628906.1562915.1606671267301@mail.yahoo.com>
Subject: From Mariah Blanchett Johnson
MIME-Version: 1.0
References: <744628906.1562915.1606671267301.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17111 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198
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
Reply-To: mb8958649@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



From Mariah Blanchett Johnson
Hello Dear friend

I have sent you this e-mail for open discussions with you. I don't want you to misunderstand this offer in any aspect...if it is okay with you, I ask for your full cooperation. I have contacted you base on trust to handle an investment in your country/company on my behalf as a prospective partner.

My name is Mariah Blanchett Johnson It might interest you to know that I have US$3.600, 000.00, Three million Six Hundred thousand deposited by late father with a financial institution I want your partnership for investing the fund in your country/company. It is pertinent to ask if you can handle this fund/investment in your country, in any of this area

1). telecommunications
2). Transportation industry
3). Five star hotel
4). property
(5) Companies,

Meanwhile, I am very honest in my dealings with people and I also demand the same from you as a Partner to be. Can I trust you with this fund?

I want you to note that this is a mutual business venture there is a reward for your assistance. I shall let you know your benefit for your assistance as we proceed. For a more comprehensively about details of the fund, please contact me as soon as possible. If you find this letter offensive, please ignore it and accept my apologies.

Regards,

Mariah Blanchett Johnson
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
