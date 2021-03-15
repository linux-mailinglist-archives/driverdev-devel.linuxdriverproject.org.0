Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ACA33C353
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:07:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CED4E6F52F;
	Mon, 15 Mar 2021 17:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W87qDXQqdDEk; Mon, 15 Mar 2021 17:06:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3A4E6F504;
	Mon, 15 Mar 2021 17:06:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A341F1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FF4F4D6C5
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wy-Hs7Slu0Zf for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03E3647489
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:10 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id mj10so67513243ejb.5
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=BmPEqq9TZuFC6ZPfl8tLVKD8IUkWczKfAHdoUCJXqE0=;
 b=T4E26lYbNPDOFhwwv8hav/U5GDkQbW1ho6Rfq/orbCrRJy+2Apqc6msT7SbXU7GL70
 /BaKORWFAruabLP6ptCplJtft4RWk23Pe9EC9khS5B5xWMxxKX/RR7keY+lQSm7QWTCk
 uui1N0kVLNPxTjlWRw9aC1n57qGTm++Xb+24mC8iaAA6erdaLaJYBYSCVJeDLTSS/hNy
 PKTtxNgkPH9PW+8snieuWnnPCNqZzxI9nOSJSenvnYa0uFHKUF0LnCRAdJ/Zut6K0r3D
 dA2ins+ERJdli/FcX4nnoWzLq7IoEBKcR1lli8ZczYJzTiImu5nnH11gRQhNNYOYJzND
 jWDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BmPEqq9TZuFC6ZPfl8tLVKD8IUkWczKfAHdoUCJXqE0=;
 b=ZjJD0I466hxidMzq8LGnP6Aa7X8iEtNknDZ/ay6jtUv1Zs/fVJFbI7VN8KmxA6UYyE
 DZYCxHDh7dpL8j8GbLeOT9bArGo0wRLSbGjj6EdfdLGBY+JdqY2d5APQJO4yq9C4EwdM
 WFNnTQRXrQnLqC8tpvtTv2OwHILjd/orJzJO+ixfmZhtmikv6mEeSnaW3VwZM8EWsRES
 disqeM+8cg8PAmOH0gz0psZtQoPH8wweKDqMy+7bvVqSytpW0VcgUh6kCw7kpogL7ala
 +4bCgPPLT4IKtcnJTTILMPBqzckJf24gkFmGAoou2HVqJ3cq1H7yJGXG7AxlhHSO7eTs
 zS0g==
X-Gm-Message-State: AOAM530jeWCz4K3bp6uOwB6j73QxBxkOBdF1zvjx5NdiG0VsACP7Jyil
 zynpzzgVb2/dYisLLuui6GVf9q4FHKQ=
X-Google-Smtp-Source: ABdhPJxQlyQhH+4EJhMbi4q1EmpjOB0ipHNIdehihiP0PopXvGdTCokoZr6Cq4oBhBgnJeC7iy9GeQ==
X-Received: by 2002:a17:906:f296:: with SMTP id
 gu22mr24397433ejb.20.1615827968978; 
 Mon, 15 Mar 2021 10:06:08 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:08 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 02/57] Staging: rtl8723bs: fix spaces in HalBtc8723b1Ant.c
Date: Mon, 15 Mar 2021 18:05:23 +0100
Message-Id: <20210315170618.2566-3-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #12: FILE: ./hal/HalBtc8723b1Ant.c:12:
    +static struct COEX_DM_8723B_1ANT * pCoexDm = &GLCoexDm8723b1Ant;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #14: FILE: ./hal/HalBtc8723b1Ant.c:14:
    +static struct COEX_STA_8723B_1ANT * pCoexSta = &GLCoexSta8723b1Ant;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #154: FILE: ./hal/HalBtc8723b1Ant.c:154:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u32 disRateMask

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #169: FILE: ./hal/HalBtc8723b1Ant.c:169:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #207: FILE: ./hal/HalBtc8723b1Ant.c:207:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #234: FILE: ./hal/HalBtc8723b1Ant.c:234:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #260: FILE: ./hal/HalBtc8723b1Ant.c:260:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #288: FILE: ./hal/HalBtc8723b1Ant.c:288:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #317: FILE: ./hal/HalBtc8723b1Ant.c:317:
    +static void halbtc8723b1ant_QueryBtInfo(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #334: FILE: ./hal/HalBtc8723b1Ant.c:334:
    +static void halbtc8723b1ant_MonitorBtCtr(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #395: FILE: ./hal/HalBtc8723b1Ant.c:395:
    +static void halbtc8723b1ant_MonitorWiFiCtr(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #481: FILE: ./hal/HalBtc8723b1Ant.c:481:
    +static bool halbtc8723b1ant_IsWifiStatusChanged(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #516: FILE: ./hal/HalBtc8723b1Ant.c:516:
    +static void halbtc8723b1ant_UpdateBtLinkInfo(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #518: FILE: ./hal/HalBtc8723b1Ant.c:518:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #580: FILE: ./hal/HalBtc8723b1Ant.c:580:
    +static u8 halbtc8723b1ant_ActionAlgorithm(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #582: FILE: ./hal/HalBtc8723b1Ant.c:582:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #808: FILE: ./hal/HalBtc8723b1Ant.c:808:
    +	struct BTC_COEXIST * pBtCoexist, bool bLowPenaltyRa

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #836: FILE: ./hal/HalBtc8723b1Ant.c:836:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bLowPenaltyRa

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #853: FILE: ./hal/HalBtc8723b1Ant.c:853:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #890: FILE: ./hal/HalBtc8723b1Ant.c:890:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #933: FILE: ./hal/HalBtc8723b1Ant.c:933:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #991: FILE: ./hal/HalBtc8723b1Ant.c:991:
    +	struct BTC_COEXIST * pBtCoexist, bool bEnable

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1012: FILE: ./hal/HalBtc8723b1Ant.c:1012:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bEnable

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1046: FILE: ./hal/HalBtc8723b1Ant.c:1046:
    +	struct BTC_COEXIST * pBtCoexist, u8 lpsVal, u8 rpwmVal

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1057: FILE: ./hal/HalBtc8723b1Ant.c:1057:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 lpsVal, u8 rpwmVal

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1108: FILE: ./hal/HalBtc8723b1Ant.c:1108:
    +	struct BTC_COEXIST * pBtCoexist, bool bLowPenaltyRA

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1121: FILE: ./hal/HalBtc8723b1Ant.c:1121:
    +	struct BTC_COEXIST * pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1124: FILE: ./hal/HalBtc8723b1Ant.c:1124:
    +	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1310: FILE: ./hal/HalBtc8723b1Ant.c:1310:
    +	struct BTC_COEXIST * pBtCoexist, u8 byte1, u8 byte2, u8 byte3, u8 byte4, u8 byte5

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1364: FILE: ./hal/HalBtc8723b1Ant.c:1364:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bTurnOn, u8 type

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1367: FILE: ./hal/HalBtc8723b1Ant.c:1367:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1664: FILE: ./hal/HalBtc8723b1Ant.c:1664:
    +static bool halbtc8723b1ant_IsCommonAction(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1755: FILE: ./hal/HalBtc8723b1Ant.c:1755:
    +	struct BTC_COEXIST * pBtCoexist, u8 wifiStatus

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1944: FILE: ./hal/HalBtc8723b1Ant.c:1944:
    +	struct BTC_COEXIST * pBtCoexist, bool bNewPsState

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1966: FILE: ./hal/HalBtc8723b1Ant.c:1966:
    +	struct BTC_COEXIST * pBtCoexist, u8 psType, u8 lpsVal, u8 rpwmVal

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2014: FILE: ./hal/HalBtc8723b1Ant.c:2014:
    +static void halbtc8723b1ant_ActionWifiMultiPort(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2022: FILE: ./hal/HalBtc8723b1Ant.c:2022:
    +static void halbtc8723b1ant_ActionHs(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2028: FILE: ./hal/HalBtc8723b1Ant.c:2028:
    +static void halbtc8723b1ant_ActionBtInquiry(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2030: FILE: ./hal/HalBtc8723b1Ant.c:2030:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2070: FILE: ./hal/HalBtc8723b1Ant.c:2070:
    +	struct BTC_COEXIST * pBtCoexist, u8 wifiStatus

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2073: FILE: ./hal/HalBtc8723b1Ant.c:2073:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2090: FILE: ./hal/HalBtc8723b1Ant.c:2090:
    +	struct BTC_COEXIST * pBtCoexist, u8 wifiStatus

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2095: FILE: ./hal/HalBtc8723b1Ant.c:2095:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2144: FILE: ./hal/HalBtc8723b1Ant.c:2144:
    +static void halbtc8723b1ant_ActionWifiNotConnected(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2155: FILE: ./hal/HalBtc8723b1Ant.c:2155:
    +	struct BTC_COEXIST * pBtCoexist

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2158: FILE: ./hal/HalBtc8723b1Ant.c:2158:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2189: FILE: ./hal/HalBtc8723b1Ant.c:2189:
    +	struct BTC_COEXIST * pBtCoexist

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2192: FILE: ./hal/HalBtc8723b1Ant.c:2192:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2213: FILE: ./hal/HalBtc8723b1Ant.c:2213:
    +static void halbtc8723b1ant_ActionWifiConnectedScan(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2215: FILE: ./hal/HalBtc8723b1Ant.c:2215:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2246: FILE: ./hal/HalBtc8723b1Ant.c:2246:
    +	struct BTC_COEXIST * pBtCoexist

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2249: FILE: ./hal/HalBtc8723b1Ant.c:2249:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2270: FILE: ./hal/HalBtc8723b1Ant.c:2270:
    +static void halbtc8723b1ant_ActionWifiConnected(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2390: FILE: ./hal/HalBtc8723b1Ant.c:2390:
    +static void halbtc8723b1ant_RunSwCoexistMechanism(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2449: FILE: ./hal/HalBtc8723b1Ant.c:2449:
    +static void halbtc8723b1ant_RunCoexistMechanism(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2451: FILE: ./hal/HalBtc8723b1Ant.c:2451:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2582: FILE: ./hal/HalBtc8723b1Ant.c:2582:
    +static void halbtc8723b1ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2596: FILE: ./hal/HalBtc8723b1Ant.c:2596:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2651: FILE: ./hal/HalBtc8723b1Ant.c:2651:
    +void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2653: FILE: ./hal/HalBtc8723b1Ant.c:2653:
    +	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2703: FILE: ./hal/HalBtc8723b1Ant.c:2703:
    +void EXhalbtc8723b1ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bWifiOnly)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2708: FILE: ./hal/HalBtc8723b1Ant.c:2708:
    +void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2723: FILE: ./hal/HalBtc8723b1Ant.c:2723:
    +void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2725: FILE: ./hal/HalBtc8723b1Ant.c:2725:
    +	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2726: FILE: ./hal/HalBtc8723b1Ant.c:2726:
    +	struct BTC_STACK_INFO * pStackInfo = &pBtCoexist->stackInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2727: FILE: ./hal/HalBtc8723b1Ant.c:2727:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3186: FILE: ./hal/HalBtc8723b1Ant.c:3186:
    +void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3212: FILE: ./hal/HalBtc8723b1Ant.c:3212:
    +void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3230: FILE: ./hal/HalBtc8723b1Ant.c:3230:
    +void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3320: FILE: ./hal/HalBtc8723b1Ant.c:3320:
    +void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3377: FILE: ./hal/HalBtc8723b1Ant.c:3377:
    +void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3447: FILE: ./hal/HalBtc8723b1Ant.c:3447:
    +void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3536: FILE: ./hal/HalBtc8723b1Ant.c:3536:
    +	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3701: FILE: ./hal/HalBtc8723b1Ant.c:3701:
    +void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3716: FILE: ./hal/HalBtc8723b1Ant.c:3716:
    +void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3738: FILE: ./hal/HalBtc8723b1Ant.c:3738:
    +void EXhalbtc8723b1ant_Periodical(struct BTC_COEXIST * pBtCoexist)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   | 152 +++++++++---------
 1 file changed, 76 insertions(+), 76 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index 87dc63408133..9e81dec49712 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -9,9 +9,9 @@
 
 /*  Global variables, these are static variables */
 static struct COEX_DM_8723B_1ANT GLCoexDm8723b1Ant;
-static struct COEX_DM_8723B_1ANT * pCoexDm = &GLCoexDm8723b1Ant;
+static struct COEX_DM_8723B_1ANT *pCoexDm = &GLCoexDm8723b1Ant;
 static struct COEX_STA_8723B_1ANT GLCoexSta8723b1Ant;
-static struct COEX_STA_8723B_1ANT * pCoexSta = &GLCoexSta8723b1Ant;
+static struct COEX_STA_8723B_1ANT *pCoexSta = &GLCoexSta8723b1Ant;
 
 static const char *const GLBtInfoSrc8723b1Ant[] = {
 	"BT Info[wifi fw]",
@@ -151,7 +151,7 @@ static u8 halbtc8723b1ant_BtRssiState(
 }
 
 static void halbtc8723b1ant_UpdateRaMask(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u32 disRateMask
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u32 disRateMask
 )
 {
 	pCoexDm->curRaMask = disRateMask;
@@ -166,7 +166,7 @@ static void halbtc8723b1ant_UpdateRaMask(
 }
 
 static void halbtc8723b1ant_AutoRateFallbackRetry(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	bool bWifiUnderBMode = false;
@@ -204,7 +204,7 @@ static void halbtc8723b1ant_AutoRateFallbackRetry(
 }
 
 static void halbtc8723b1ant_RetryLimit(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	pCoexDm->curRetryLimitType = type;
@@ -231,7 +231,7 @@ static void halbtc8723b1ant_RetryLimit(
 }
 
 static void halbtc8723b1ant_AmpduMaxTime(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	pCoexDm->curAmpduTimeType = type;
@@ -257,7 +257,7 @@ static void halbtc8723b1ant_AmpduMaxTime(
 }
 
 static void halbtc8723b1ant_LimitedTx(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bForceExec,
 	u8 raMaskType,
 	u8 arfrType,
@@ -285,7 +285,7 @@ static void halbtc8723b1ant_LimitedTx(
 }
 
 static void halbtc8723b1ant_LimitedRx(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bForceExec,
 	bool bRejApAggPkt,
 	bool bBtCtrlAggBufSize,
@@ -314,7 +314,7 @@ static void halbtc8723b1ant_LimitedRx(
 
 }
 
-static void halbtc8723b1ant_QueryBtInfo(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_QueryBtInfo(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 	H2C_Parameter[1] = {0};
 
@@ -331,7 +331,7 @@ static void halbtc8723b1ant_QueryBtInfo(struct BTC_COEXIST * pBtCoexist)
 	pBtCoexist->fBtcFillH2c(pBtCoexist, 0x61, 1, H2C_Parameter);
 }
 
-static void halbtc8723b1ant_MonitorBtCtr(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_MonitorBtCtr(struct BTC_COEXIST *pBtCoexist)
 {
 	u32 regHPTxRx, regLPTxRx, u4Tmp;
 	u32 regHPTx = 0, regHPRx = 0, regLPTx = 0, regLPRx = 0;
@@ -392,7 +392,7 @@ static void halbtc8723b1ant_MonitorBtCtr(struct BTC_COEXIST * pBtCoexist)
 }
 
 
-static void halbtc8723b1ant_MonitorWiFiCtr(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_MonitorWiFiCtr(struct BTC_COEXIST *pBtCoexist)
 {
 	s32	wifiRssi = 0;
 	bool bWifiBusy = false, bWifiUnderBMode = false;
@@ -478,7 +478,7 @@ static void halbtc8723b1ant_MonitorWiFiCtr(struct BTC_COEXIST * pBtCoexist)
 
 }
 
-static bool halbtc8723b1ant_IsWifiStatusChanged(struct BTC_COEXIST * pBtCoexist)
+static bool halbtc8723b1ant_IsWifiStatusChanged(struct BTC_COEXIST *pBtCoexist)
 {
 	static bool	bPreWifiBusy, bPreUnder4way, bPreBtHsOn;
 	bool bWifiBusy = false, bUnder4way = false, bBtHsOn = false;
@@ -513,9 +513,9 @@ static bool halbtc8723b1ant_IsWifiStatusChanged(struct BTC_COEXIST * pBtCoexist)
 	return false;
 }
 
-static void halbtc8723b1ant_UpdateBtLinkInfo(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_UpdateBtLinkInfo(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bBtHsOn = false;
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
@@ -577,9 +577,9 @@ static void halbtc8723b1ant_UpdateBtLinkInfo(struct BTC_COEXIST * pBtCoexist)
 		pBtLinkInfo->bHidOnly = false;
 }
 
-static u8 halbtc8723b1ant_ActionAlgorithm(struct BTC_COEXIST * pBtCoexist)
+static u8 halbtc8723b1ant_ActionAlgorithm(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bBtHsOn = false;
 	u8 algorithm = BT_8723B_1ANT_COEX_ALGO_UNDEFINED;
 	u8 numOfDiffProfile = 0;
@@ -805,7 +805,7 @@ static u8 halbtc8723b1ant_ActionAlgorithm(struct BTC_COEXIST * pBtCoexist)
 }
 
 static void halbtc8723b1ant_SetSwPenaltyTxRateAdaptive(
-	struct BTC_COEXIST * pBtCoexist, bool bLowPenaltyRa
+	struct BTC_COEXIST *pBtCoexist, bool bLowPenaltyRa
 )
 {
 	u8 	H2C_Parameter[6] = {0};
@@ -833,7 +833,7 @@ static void halbtc8723b1ant_SetSwPenaltyTxRateAdaptive(
 }
 
 static void halbtc8723b1ant_LowPenaltyRa(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bLowPenaltyRa
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bLowPenaltyRa
 )
 {
 	pCoexDm->bCurLowPenaltyRa = bLowPenaltyRa;
@@ -850,7 +850,7 @@ static void halbtc8723b1ant_LowPenaltyRa(
 }
 
 static void halbtc8723b1ant_SetCoexTable(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	u32 val0x6c0,
 	u32 val0x6c4,
 	u32 val0x6c8,
@@ -887,7 +887,7 @@ static void halbtc8723b1ant_SetCoexTable(
 }
 
 static void halbtc8723b1ant_CoexTable(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bForceExec,
 	u32 val0x6c0,
 	u32 val0x6c4,
@@ -930,7 +930,7 @@ static void halbtc8723b1ant_CoexTable(
 }
 
 static void halbtc8723b1ant_CoexTableWithType(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	BTC_PRINT(
@@ -988,7 +988,7 @@ static void halbtc8723b1ant_CoexTableWithType(
 }
 
 static void halbtc8723b1ant_SetFwIgnoreWlanAct(
-	struct BTC_COEXIST * pBtCoexist, bool bEnable
+	struct BTC_COEXIST *pBtCoexist, bool bEnable
 )
 {
 	u8 H2C_Parameter[1] = {0};
@@ -1009,7 +1009,7 @@ static void halbtc8723b1ant_SetFwIgnoreWlanAct(
 }
 
 static void halbtc8723b1ant_IgnoreWlanAct(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bEnable
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bEnable
 )
 {
 	BTC_PRINT(
@@ -1043,7 +1043,7 @@ static void halbtc8723b1ant_IgnoreWlanAct(
 }
 
 static void halbtc8723b1ant_SetLpsRpwm(
-	struct BTC_COEXIST * pBtCoexist, u8 lpsVal, u8 rpwmVal
+	struct BTC_COEXIST *pBtCoexist, u8 lpsVal, u8 rpwmVal
 )
 {
 	u8 lps = lpsVal;
@@ -1054,7 +1054,7 @@ static void halbtc8723b1ant_SetLpsRpwm(
 }
 
 static void halbtc8723b1ant_LpsRpwm(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 lpsVal, u8 rpwmVal
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 lpsVal, u8 rpwmVal
 )
 {
 	BTC_PRINT(
@@ -1105,7 +1105,7 @@ static void halbtc8723b1ant_LpsRpwm(
 }
 
 static void halbtc8723b1ant_SwMechanism(
-	struct BTC_COEXIST * pBtCoexist, bool bLowPenaltyRA
+	struct BTC_COEXIST *pBtCoexist, bool bLowPenaltyRA
 )
 {
 	BTC_PRINT(
@@ -1118,10 +1118,10 @@ static void halbtc8723b1ant_SwMechanism(
 }
 
 static void halbtc8723b1ant_SetAntPath(
-	struct BTC_COEXIST * pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
+	struct BTC_COEXIST *pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
 )
 {
-	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;
+	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
 	u32 fwVer = 0, u4Tmp = 0, cntBtCalChk = 0;
 	bool bPgExtSwitch = false;
 	bool bUseExtSwitch = false;
@@ -1307,7 +1307,7 @@ static void halbtc8723b1ant_SetAntPath(
 }
 
 static void halbtc8723b1ant_SetFwPstdma(
-	struct BTC_COEXIST * pBtCoexist, u8 byte1, u8 byte2, u8 byte3, u8 byte4, u8 byte5
+	struct BTC_COEXIST *pBtCoexist, u8 byte1, u8 byte2, u8 byte3, u8 byte4, u8 byte5
 )
 {
 	u8 H2C_Parameter[5] = {0};
@@ -1361,10 +1361,10 @@ static void halbtc8723b1ant_SetFwPstdma(
 
 
 static void halbtc8723b1ant_PsTdma(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bTurnOn, u8 type
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bTurnOn, u8 type
 )
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bWifiBusy = false;
 	u8 rssiAdjustVal = 0;
 	u8 psTdmaByte4Val = 0x50, psTdmaByte0Val = 0x51, psTdmaByte3Val =  0x10;
@@ -1661,7 +1661,7 @@ static void halbtc8723b1ant_PsTdma(
 	pCoexDm->prePsTdma = pCoexDm->curPsTdma;
 }
 
-static bool halbtc8723b1ant_IsCommonAction(struct BTC_COEXIST * pBtCoexist)
+static bool halbtc8723b1ant_IsCommonAction(struct BTC_COEXIST *pBtCoexist)
 {
 	bool bCommon = false, bWifiConnected = false, bWifiBusy = false;
 
@@ -1752,7 +1752,7 @@ static bool halbtc8723b1ant_IsCommonAction(struct BTC_COEXIST * pBtCoexist)
 
 
 static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
-	struct BTC_COEXIST * pBtCoexist, u8 wifiStatus
+	struct BTC_COEXIST *pBtCoexist, u8 wifiStatus
 )
 {
 	static s32 up, dn, m, n, WaitCount;
@@ -1941,7 +1941,7 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 }
 
 static void halbtc8723b1ant_PsTdmaCheckForPowerSaveState(
-	struct BTC_COEXIST * pBtCoexist, bool bNewPsState
+	struct BTC_COEXIST *pBtCoexist, bool bNewPsState
 )
 {
 	u8 lpsMode = 0x0;
@@ -1963,7 +1963,7 @@ static void halbtc8723b1ant_PsTdmaCheckForPowerSaveState(
 }
 
 static void halbtc8723b1ant_PowerSaveState(
-	struct BTC_COEXIST * pBtCoexist, u8 psType, u8 lpsVal, u8 rpwmVal
+	struct BTC_COEXIST *pBtCoexist, u8 psType, u8 lpsVal, u8 rpwmVal
 )
 {
 	bool bLowPwrDisable = false;
@@ -2011,7 +2011,7 @@ static void halbtc8723b1ant_PowerSaveState(
 /* 	Non-Software Coex Mechanism start */
 /*  */
 /*  */
-static void halbtc8723b1ant_ActionWifiMultiPort(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_ActionWifiMultiPort(struct BTC_COEXIST *pBtCoexist)
 {
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2019,15 +2019,15 @@ static void halbtc8723b1ant_ActionWifiMultiPort(struct BTC_COEXIST * pBtCoexist)
 	halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
 }
 
-static void halbtc8723b1ant_ActionHs(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_ActionHs(struct BTC_COEXIST *pBtCoexist)
 {
 	halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 5);
 	halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
 }
 
-static void halbtc8723b1ant_ActionBtInquiry(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_ActionBtInquiry(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bWifiConnected = false;
 	bool bApEnable = false;
 	bool bWifiBusy = false;
@@ -2067,10 +2067,10 @@ static void halbtc8723b1ant_ActionBtInquiry(struct BTC_COEXIST * pBtCoexist)
 }
 
 static void halbtc8723b1ant_ActionBtScoHidOnlyBusy(
-	struct BTC_COEXIST * pBtCoexist, u8 wifiStatus
+	struct BTC_COEXIST *pBtCoexist, u8 wifiStatus
 )
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bWifiConnected = false;
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);
@@ -2087,12 +2087,12 @@ static void halbtc8723b1ant_ActionBtScoHidOnlyBusy(
 }
 
 static void halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
-	struct BTC_COEXIST * pBtCoexist, u8 wifiStatus
+	struct BTC_COEXIST *pBtCoexist, u8 wifiStatus
 )
 {
 	u8 btRssiState;
 
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	btRssiState = halbtc8723b1ant_BtRssiState(2, 28, 0);
 
 	if ((pCoexSta->lowPriorityRx >= 1000) && (pCoexSta->lowPriorityRx != 65535))
@@ -2141,7 +2141,7 @@ static void halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
 	}
 }
 
-static void halbtc8723b1ant_ActionWifiNotConnected(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_ActionWifiNotConnected(struct BTC_COEXIST *pBtCoexist)
 {
 	/*  power save state */
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
@@ -2152,10 +2152,10 @@ static void halbtc8723b1ant_ActionWifiNotConnected(struct BTC_COEXIST * pBtCoexi
 }
 
 static void halbtc8723b1ant_ActionWifiNotConnectedScan(
-	struct BTC_COEXIST * pBtCoexist
+	struct BTC_COEXIST *pBtCoexist
 )
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2186,10 +2186,10 @@ static void halbtc8723b1ant_ActionWifiNotConnectedScan(
 }
 
 static void halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(
-	struct BTC_COEXIST * pBtCoexist
+	struct BTC_COEXIST *pBtCoexist
 )
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2210,9 +2210,9 @@ static void halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(
 	}
 }
 
-static void halbtc8723b1ant_ActionWifiConnectedScan(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_ActionWifiConnectedScan(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2243,10 +2243,10 @@ static void halbtc8723b1ant_ActionWifiConnectedScan(struct BTC_COEXIST * pBtCoex
 }
 
 static void halbtc8723b1ant_ActionWifiConnectedSpecialPacket(
-	struct BTC_COEXIST * pBtCoexist
+	struct BTC_COEXIST *pBtCoexist
 )
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2267,7 +2267,7 @@ static void halbtc8723b1ant_ActionWifiConnectedSpecialPacket(
 	}
 }
 
-static void halbtc8723b1ant_ActionWifiConnected(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_ActionWifiConnected(struct BTC_COEXIST *pBtCoexist)
 {
 	bool bWifiBusy = false;
 	bool bScan = false, bLink = false, bRoam = false;
@@ -2387,7 +2387,7 @@ static void halbtc8723b1ant_ActionWifiConnected(struct BTC_COEXIST * pBtCoexist)
 	}
 }
 
-static void halbtc8723b1ant_RunSwCoexistMechanism(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_RunSwCoexistMechanism(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 algorithm = 0;
 
@@ -2446,9 +2446,9 @@ static void halbtc8723b1ant_RunSwCoexistMechanism(struct BTC_COEXIST * pBtCoexis
 	}
 }
 
-static void halbtc8723b1ant_RunCoexistMechanism(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_RunCoexistMechanism(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bWifiConnected = false, bBtHsOn = false;
 	bool bIncreaseScanDevNum = false;
 	bool bBtCtrlAggBufSize = false;
@@ -2579,7 +2579,7 @@ static void halbtc8723b1ant_RunCoexistMechanism(struct BTC_COEXIST * pBtCoexist)
 		halbtc8723b1ant_ActionWifiConnected(pBtCoexist);
 }
 
-static void halbtc8723b1ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b1ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
 {
 	/*  force to reset coex mechanism */
 
@@ -2593,7 +2593,7 @@ static void halbtc8723b1ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)
 }
 
 static void halbtc8723b1ant_InitHwConfig(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bBackUp,
 	bool bWifiOnly
 )
@@ -2648,9 +2648,9 @@ static void halbtc8723b1ant_InitHwConfig(
 /*  */
 /*  extern function start with EXhalbtc8723b1ant_ */
 /*  */
-void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;
+	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
 	u8 u1Tmp = 0x0;
 	u16 u2Tmp = 0x0;
 
@@ -2700,12 +2700,12 @@ void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist)
 	}
 }
 
-void EXhalbtc8723b1ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bWifiOnly)
+void EXhalbtc8723b1ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bWifiOnly)
 {
 	halbtc8723b1ant_InitHwConfig(pBtCoexist, true, bWifiOnly);
 }
 
-void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
 {
 	BTC_PRINT(
 		BTC_MSG_INTERFACE,
@@ -2720,11 +2720,11 @@ void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)
 	halbtc8723b1ant_QueryBtInfo(pBtCoexist);
 }
 
-void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;
-	struct BTC_STACK_INFO * pStackInfo = &pBtCoexist->stackInfo;
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
+	struct BTC_STACK_INFO *pStackInfo = &pBtCoexist->stackInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	u8 *cliBuf = pBtCoexist->cliBuf;
 	u8 u1Tmp[4], i, btInfoExt, psTdmaCase = 0;
 	u16 u2Tmp[4];
@@ -3183,7 +3183,7 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist)
 }
 
 
-void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	if (pBtCoexist->bManualControl ||	pBtCoexist->bStopCoexDm)
 		return;
@@ -3209,7 +3209,7 @@ void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	if (pBtCoexist->bManualControl || pBtCoexist->bStopCoexDm)
 		return;
@@ -3227,7 +3227,7 @@ void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	bool bWifiConnected = false, bBtHsOn = false;
 	u32 wifiLinkStatus = 0;
@@ -3317,7 +3317,7 @@ void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	bool bWifiConnected = false, bBtHsOn = false;
 	u32 wifiLinkStatus = 0;
@@ -3374,7 +3374,7 @@ void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	u8 H2C_Parameter[3] = {0};
 	u32 wifiBw;
@@ -3444,7 +3444,7 @@ void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 typ
 	pBtCoexist->fBtcFillH2c(pBtCoexist, 0x66, 3, H2C_Parameter);
 }
 
-void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	bool bBtHsOn = false;
 	u32 wifiLinkStatus = 0;
@@ -3533,7 +3533,7 @@ void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 t
 }
 
 void EXhalbtc8723b1ant_BtInfoNotify(
-	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length
+	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
 )
 {
 	u8 btInfo = 0;
@@ -3698,7 +3698,7 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 	halbtc8723b1ant_RunCoexistMechanism(pBtCoexist);
 }
 
-void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST *pBtCoexist)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Halt notify\n"));
 
@@ -3713,7 +3713,7 @@ void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST * pBtCoexist)
 	pBtCoexist->bStopCoexDm = true;
 }
 
-void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState)
+void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));
 
@@ -3735,7 +3735,7 @@ void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState)
 	}
 }
 
-void EXhalbtc8723b1ant_Periodical(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b1ant_Periodical(struct BTC_COEXIST *pBtCoexist)
 {
 	static u8 disVerInfoCnt;
 	u32 fwVer = 0, btPatchVer = 0;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

