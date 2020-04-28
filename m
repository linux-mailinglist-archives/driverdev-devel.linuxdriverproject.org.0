Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E23221BBA9A
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 12:04:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B9E286BB9;
	Tue, 28 Apr 2020 10:04:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k7xXSnT1Mmpk; Tue, 28 Apr 2020 10:04:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 059A486406;
	Tue, 28 Apr 2020 10:04:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4F881BF27C
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 10:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A0FD185E7C
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 10:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oMwlAoey_A3K for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 10:03:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6A3E5855A1
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 10:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588068239; x=1619604239;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/3NL2W1WAkpvHO/Sl+p/ZIn0sYEPKrT3AdoSd2ozwk4=;
 b=DeRxsxR4G3N8e9uKqFGO8s25+/HyhLao4G/rrKYdYI+zBUBY5nFjBASR
 GJ7E5T7dNmtLx0DnQSh6neNXZUNXYJ0whop26DMjjAog1g0wwWrO/6qU/
 HLXeqwsnTGVT91vC9f1mOO2VXjgGCqQQ9j1Dhu36xFB8MnDDMP95TORTW
 y8TXLoOsFMGXMe/o9kc5T+kF2H8BvvkYA48vDqPIxa3k8qjjOYu+LqumH
 IW0Lxk2IEBkYfuoF6YufWSdJih0q6NQ4Ez9vhdGVsZNDkCfce484OWpTe
 hEDKJ9JK0wyYXpahJIXHepY63/KdZrePk/vTo+a9IIbNKcp7r3/Ix93+P A==;
IronPort-SDR: VMxnrQRbzs6FAGcoAiAmmwq5DpmR5G75f/Rt+1aKP7zkOehhXYS04SN5aXAtK41RcFE2/48c4r
 FybSW/sVnaddSd9xsCgV9QbY0FlbZe4WCtfakn6iMTuxHHEThmX+JEc5wMf76WVmIIgxkX2ljs
 R8Q+WpSLdmxwYaCuf8kXdFMPHohM8MgcUITSacJCVKBsEYgMgnmV3k2YYbEoNIv6qBIU/8pWi9
 UtjTOYcgSqfgYcThVwS8haqxltxtEKgtniWt4eqgd5TTeHH8MJuCXmooVBhRMrI8ycXDG9ydTq
 tps=
X-IronPort-AV: E=Sophos;i="5.73,327,1583218800"; d="scan'208";a="10618265"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Apr 2020 03:03:58 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 28 Apr 2020 03:03:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 28 Apr 2020 03:03:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JtMw6Zu+uaOMpY/6W3ix7a1hNoGbqSdqAZFA72/RCnaexr6cP4sAyWy7ssSlXsXAYFszjAU7BVcq4G5slxHese+tQBTkzFeo4NiRKvYH02DPFVTcI4xEPVAt4W+B9Ky1WQrixTJ50ZZiNiiUuw+mCYT0W4Rnj96/DzjUZVMif1pyXlzwPWkTJLxi1ZWcM+RR2EXMPM9mWzjwrM1KjCk4UonT0ePA3NtlAHO9azeXRv8Zlxq89kcc42umctIrlT3YuwVIZS7QCZn2yqsABdD+txtUfUPyHyfteoWLYGd+8AlowtK0mZ897BwSf4ZWV2imsc4hbw29DComCxI3ruUVLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3NL2W1WAkpvHO/Sl+p/ZIn0sYEPKrT3AdoSd2ozwk4=;
 b=LjjLlv3tgXaIpiraLLCHUY8csrkUXFcsd1CpaMbrtZY/ANF65QTezb4cu+4mi1Nr6NEw6GTr/KJ/giZE+KbvpGp8sVFSGVGqgfzs0oFKiGe+jLp5WwfPPB7LyGZ/revhcsz16sDb+7eMeYNdcLRptwNF6Ycr/OvxMtYwwp7kzaJ4LeK0NNtOrKofWEugZMLVN4VpzQJeXaYFRlT+evudLhHnwqoSqaao8GRdoGEWuZjV7wXkmMDKt/7IlvCNVaI2OTSaraBrJzNKfzGA5JEMWWkYgGLCR7QIAsOmbLEGPA6gIjxWdoLwVJD/VhaBE2OjRMrB+8225uXEReRZAmo8Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3NL2W1WAkpvHO/Sl+p/ZIn0sYEPKrT3AdoSd2ozwk4=;
 b=p2q5JPgfFNp64HZJeMxrmUyPK98NGxoxi0xug0iWUl1Nd/7rLt53FcInFZ/WbwLfkt5G0gVk8D0PiZolFcXMEocmVgKxbBMxrZNqmfxUC+8UMJfkr0qQyjJ7i6ggMYopFHyHYJlstQwIbHvGrn7cq0CdN2DV3Gs1jiDnP1nJ+d8=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB3079.namprd11.prod.outlook.com (2603:10b6:a03:92::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Tue, 28 Apr
 2020 10:03:53 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::7c0f:1690:7a0d:151e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::7c0f:1690:7a0d:151e%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 10:03:53 +0000
From: <Ajay.Kathat@microchip.com>
To: <johannes@sipsolutions.net>, <linux-wireless@vger.kernel.org>
Subject: Re: [PATCH 2/2] staging: wilc1000: adjust for management frame
 register API changes
Thread-Topic: [PATCH 2/2] staging: wilc1000: adjust for management frame
 register API changes
Thread-Index: AQHWHTUM2ZCtic93SEWN1gedFTu4VKiOTjiA
Date: Tue, 28 Apr 2020 10:03:53 +0000
Message-ID: <2d14898e-57a2-142d-7bca-d32a3d135db2@microchip.com>
References: <20200428101400.ae19d651ec38.Ieb15844bb5ab93b3d7931d6561f42e3316ef8251@changeid>
 <20200428101400.bac7e94c2bf8.I6a2287b9f68f35aff5f6de409c5ffa388de760e2@changeid>
In-Reply-To: <20200428101400.bac7e94c2bf8.I6a2287b9f68f35aff5f6de409c5ffa388de760e2@changeid>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: sipsolutions.net; dkim=none (message not signed)
 header.d=none;sipsolutions.net; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [183.82.186.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1d83148-73e5-4572-3ad5-08d7eb5b74fe
x-ms-traffictypediagnostic: BYAPR11MB3079:
x-microsoft-antispam-prvs: <BYAPR11MB3079D3412267BC74151840EEE3AC0@BYAPR11MB3079.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3125.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(396003)(366004)(136003)(39860400002)(66476007)(66556008)(2906002)(66446008)(76116006)(31696002)(66946007)(91956017)(5660300002)(4326008)(71200400001)(64756008)(86362001)(54906003)(2616005)(6486002)(6512007)(81156014)(8676002)(8936002)(478600001)(36756003)(966005)(53546011)(6506007)(110136005)(186003)(26005)(316002)(31686004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dwnf4G0yxEbu/mwPDUT0Bh0WTfS7eRnGPmxU/XkXJVjBzmFcGAX86Th1s2tBfCaS5q64qFzc3FrAD+vkAbiaGjO0QsIB6hGGHEUc27Z5GggiNlip4Sf4rzOhBxqMfjQrszC7cTd4veyRKD7hx/I2Cb9W70pc6QIC+bCFu5qVTR5yrTVX/E8EdC046Mck61iEJWcwJ2wjr/h8jDYCkDcFuQnkWWh4VKA6ESFfYymbU5NoLFmGzArBWrz049lhOvNQ9RSG0DKupY1WiSekOucplVuzh5GyhITVKDZDXmO8aK4ZjsqY2hVhixoYvW2JU5P4l7coq9TXQNr6EcqQ+wXvpM4m8aMyrnc4iEqPwC6nNaT0MqEqtq7wn66JbEMOh77zuxgmN4b9k/r0p/AX9rT8uLZE/Yul+cWxPKXvCcVhOnLKNnZ+0RR6ZYcN21cbIXiRe9TdFbl7btcLjevoDf6cMW8/7e8sxycPPWYsaHf9JwK0AFasC3cWgl5G/6QPQIso
x-ms-exchange-antispam-messagedata: GRc67k/ImzF/8TeHLLN2AKqUtuNrtfY0XFLX0Aglv1abA5kwmkk7KsTQtGYFK4MRzwaH5pVEAyFkbnZyFGSBIAL9kKPbj70gjPgVBiWCzQRKt/TSQPGN8ImrfyirchauXVOmLtwhEZ2vCQhTiGbzMtkKqJioeTI8+8uRG9uMb3cVpiD06zqC4YjA0aoDplIJVFKZ+HWHwGU6WjUMU+P35CKrmuC438AkncOB/olEY2T/xCyVL7R5Lp/IBEaj0WB56C+SPqRLbiJWlA6TFAemft4C9AQq+3n3IFRGMylLKHKhGm0ghlxJUAQRNh+dL8XNwUQCHAzJdoli5BFfV2ucT6q6jzKP2FctUwjgY1tAMU26u8zwc/PMOqPseDhxPzKHeJm6DIWfsDH83GZoNc1Wt8roeVO14hax21u7Rn8U9i6tnMJanIj1YyQ4EeTBFZosAIr+rxWft9yWjCmG4cYX3h2Kw4FjCZ0mcAV+OlnxQy3+d4jj/dsW1qrJPDJFSGYsrJwjXNGzN1YN0uLV1cd+/CK7FRhpSVqja0df7Gbqg0BUTI3iwUue8v4NawRtFXdyI/JNnyL6RxRXJnKX6+Q9mvNLw3P5X9BlkFfiAWcA1EB/PpCu6fFAPutcTnjrTqomXnmR5JlrhTgzfsLfEuBtJRoRAzQTTFK6j3ChXRS8J608ytt14wNv/r1kEui6QczuFai824QuXEJLWyu91Ryhw/dBBUsD3y8RWr3NwzGpFZXs936Atmlev0fNwC9qzFxnDM7169a1vc3LZbGcYMR+6b3uzl3mCL3W/lEifCfhHVM=
x-ms-exchange-transport-forked: True
Content-ID: <74A37FF0AFA2D6458A1F721B3CEC5317@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e1d83148-73e5-4572-3ad5-08d7eb5b74fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 10:03:53.2494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4waymi/bpL98YO24f8ncLbON5VOAmfeNEiiE3forbKi+6Y+xyZ/41WMbGDKCDbAWNTdLHgizeZavX0bsSZWuihLAZOlmEeb+FbcqZPgXAPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3079
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
Cc: devel@driverdev.osuosl.org, johannes.berg@intel.com, geomatsi@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 28/04/20 1:44 pm, Johannes Berg wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> From: Johannes Berg <johannes.berg@intel.com>
> 
> Adjust to the API changes in cfg80211 for management frame registration.
> 
> Fixes: 6cd536fe62ef ("cfg80211: change internal management frame registration API")
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>


Acked-by: Ajay Singh <ajay.kathat@microchip.com>

This patch looks better to handle cfg80211 callback changes for frame
registration compared to [1].

[1].
https://lore.kernel.org/linux-wireless/20200424212454.230080-1-geomatsi@gmail.com/

> ---
>  drivers/staging/wilc1000/cfg80211.c | 36 ++++++++++++++---------------
>  drivers/staging/wilc1000/cfg80211.h |  5 ++--
>  drivers/staging/wilc1000/netdev.c   | 21 ++++++++---------
>  drivers/staging/wilc1000/netdev.h   |  9 +-------
>  4 files changed, 30 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/cfg80211.c b/drivers/staging/wilc1000/cfg80211.c
> index 4bdcbc5fd2fd..b6065a0d660f 100644
> --- a/drivers/staging/wilc1000/cfg80211.c
> +++ b/drivers/staging/wilc1000/cfg80211.c
> @@ -1217,33 +1217,31 @@ static int mgmt_tx_cancel_wait(struct wiphy *wiphy,
>         return 0;
>  }
> 
> -void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
> -                             u16 frame_type, bool reg)
> +void wilc_update_mgmt_frame_registrations(struct wiphy *wiphy,
> +                                         struct wireless_dev *wdev,
> +                                         struct mgmt_frame_regs *upd)
>  {
>         struct wilc *wl = wiphy_priv(wiphy);
>         struct wilc_vif *vif = netdev_priv(wdev->netdev);
> +       u32 presp_bit = BIT(IEEE80211_STYPE_PROBE_REQ >> 4);
> +       u32 action_bit = BIT(IEEE80211_STYPE_ACTION >> 4);
> 
> -       if (!frame_type)
> -               return;
> +       if (wl->initialized) {
> +               bool prev = vif->mgmt_reg_stypes & presp_bit;
> +               bool now = upd->interface_stypes & presp_bit;
> 
> -       switch (frame_type) {
> -       case IEEE80211_STYPE_PROBE_REQ:
> -               vif->frame_reg[0].type = frame_type;
> -               vif->frame_reg[0].reg = reg;
> -               break;
> +               if (now != prev)
> +                       wilc_frame_register(vif, IEEE80211_STYPE_PROBE_REQ, now);
> 
> -       case IEEE80211_STYPE_ACTION:
> -               vif->frame_reg[1].type = frame_type;
> -               vif->frame_reg[1].reg = reg;
> -               break;
> +               prev = vif->mgmt_reg_stypes & action_bit;
> +               now = upd->interface_stypes & action_bit;
> 
> -       default:
> -               break;
> +               if (now != prev)
> +                       wilc_frame_register(vif, IEEE80211_STYPE_ACTION, now);
>         }
> 
> -       if (!wl->initialized)
> -               return;
> -       wilc_frame_register(vif, frame_type, reg);
> +       vif->mgmt_reg_stypes =
> +               upd->interface_stypes & (presp_bit | action_bit);
>  }
> 
>  static int set_cqm_rssi_config(struct wiphy *wiphy, struct net_device *dev,
> @@ -1665,7 +1663,7 @@ static const struct cfg80211_ops wilc_cfg80211_ops = {
>         .cancel_remain_on_channel = cancel_remain_on_channel,
>         .mgmt_tx_cancel_wait = mgmt_tx_cancel_wait,
>         .mgmt_tx = mgmt_tx,
> -       .mgmt_frame_register = wilc_mgmt_frame_register,
> +       .update_mgmt_frame_registrations = wilc_update_mgmt_frame_registrations,
>         .set_power_mgmt = set_power_mgmt,
>         .set_cqm_rssi_config = set_cqm_rssi_config,
> 
> diff --git a/drivers/staging/wilc1000/cfg80211.h b/drivers/staging/wilc1000/cfg80211.h
> index 5e5d63f70df2..37b294cb3b37 100644
> --- a/drivers/staging/wilc1000/cfg80211.h
> +++ b/drivers/staging/wilc1000/cfg80211.h
> @@ -21,8 +21,9 @@ void wilc_wfi_deinit_mon_interface(struct wilc *wl, bool rtnl_locked);
>  struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
>                                                const char *name,
>                                                struct net_device *real_dev);
> -void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
> -                             u16 frame_type, bool reg);
> +void wilc_update_mgmt_frame_registrations(struct wiphy *wiphy,
> +                                         struct wireless_dev *wdev,
> +                                         struct mgmt_frame_regs *upd);
>  struct wilc_vif *wilc_get_interface(struct wilc *wl);
>  struct wilc_vif *wilc_get_wl_to_vif(struct wilc *wl);
>  void wlan_deinit_locks(struct wilc *wilc);
> diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
> index f94a17babd12..fda0ab97b02c 100644
> --- a/drivers/staging/wilc1000/netdev.c
> +++ b/drivers/staging/wilc1000/netdev.c
> @@ -571,6 +571,7 @@ static int wilc_mac_open(struct net_device *ndev)
>         struct wilc *wl = vif->wilc;
>         unsigned char mac_add[ETH_ALEN] = {0};
>         int ret = 0;
> +       struct mgmt_frame_regs mgmt_regs = {};
> 
>         if (!wl || !wl->dev) {
>                 netdev_err(ndev, "device not ready\n");
> @@ -602,14 +603,12 @@ static int wilc_mac_open(struct net_device *ndev)
>                 return -EINVAL;
>         }
> 
> -       wilc_mgmt_frame_register(vif->ndev->ieee80211_ptr->wiphy,
> -                                vif->ndev->ieee80211_ptr,
> -                                vif->frame_reg[0].type,
> -                                vif->frame_reg[0].reg);
> -       wilc_mgmt_frame_register(vif->ndev->ieee80211_ptr->wiphy,
> -                                vif->ndev->ieee80211_ptr,
> -                                vif->frame_reg[1].type,
> -                                vif->frame_reg[1].reg);
> +       mgmt_regs.interface_stypes = vif->mgmt_reg_stypes;
> +       /* so we detect a change */
> +       vif->mgmt_reg_stypes = 0;
> +       wilc_update_mgmt_frame_registrations(vif->ndev->ieee80211_ptr->wiphy,
> +                                            vif->ndev->ieee80211_ptr,
> +                                            &mgmt_regs);
>         netif_wake_queue(ndev);
>         wl->open_ifcs++;
>         vif->mac_opened = 1;
> @@ -792,12 +791,10 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
>         srcu_idx = srcu_read_lock(&wilc->srcu);
>         list_for_each_entry_rcu(vif, &wilc->vif_list, list) {
>                 u16 type = le16_to_cpup((__le16 *)buff);
> +               u32 type_bit = BIT(type >> 4);
> 
>                 if (vif->priv.p2p_listen_state &&
> -                   ((type == vif->frame_reg[0].type &&
> -                     vif->frame_reg[0].reg) ||
> -                    (type == vif->frame_reg[1].type &&
> -                     vif->frame_reg[1].reg)))
> +                   vif->mgmt_reg_stypes & type_bit)
>                         wilc_wfi_p2p_rx(vif, buff, size);
> 
>                 if (vif->monitor_flag)
> diff --git a/drivers/staging/wilc1000/netdev.h b/drivers/staging/wilc1000/netdev.h
> index 61cbec674a62..d0a006b68d08 100644
> --- a/drivers/staging/wilc1000/netdev.h
> +++ b/drivers/staging/wilc1000/netdev.h
> @@ -24,8 +24,6 @@
>  #define PMKID_FOUND                            1
>  #define NUM_STA_ASSOCIATED                     8
> 
> -#define NUM_REG_FRAME                          2
> -
>  #define TCP_ACK_FILTER_LINK_SPEED_THRESH       54
>  #define DEFAULT_LINK_SPEED                     72
> 
> @@ -151,11 +149,6 @@ struct wilc_priv {
>         u64 inc_roc_cookie;
>  };
> 
> -struct frame_reg {
> -       u16 type;
> -       bool reg;
> -};
> -
>  #define MAX_TCP_SESSION                25
>  #define MAX_PENDING_ACKS               256
> 
> @@ -187,7 +180,7 @@ struct wilc_vif {
>         u8 iftype;
>         int monitor_flag;
>         int mac_opened;
> -       struct frame_reg frame_reg[NUM_REG_FRAME];
> +       u32 mgmt_reg_stypes;
>         struct net_device_stats netstats;
>         struct wilc *wilc;
>         u8 bssid[ETH_ALEN];
> --
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
