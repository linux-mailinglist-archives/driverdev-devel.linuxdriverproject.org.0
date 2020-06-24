Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC41F206BA4
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 07:27:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D8D88922D;
	Wed, 24 Jun 2020 05:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Avw-H9TFEQC; Wed, 24 Jun 2020 05:27:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDD7A88D7C;
	Wed, 24 Jun 2020 05:26:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32D851BF863
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 05:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F08888C9A
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 05:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VHu7MqLzYr45 for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 05:26:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0718688A3D
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 05:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592976415; x=1624512415;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=y4rRV2IL7tXd+mgOfjSbC5FB9fVxyYSv9lASGqHCsNc=;
 b=CmxV7iImmMSSCmaeOMO4AcPFuyYxT1pud2pf+2KUoOxNgVnSZrWPxU/Z
 asaKaO1tOljfw9Kw/YhJszuGxV5ibja48Hw4viZRUAxXZVTTwrhN4fT5l
 4XNCU/hjTy9zR7cUNlikeUzzxOpom95WKQpiqE91QMC6A2kwYDVBOx7Al
 Mns112wdC7CeSVUiGCZkWEVK75gL8HhTbSzaN6xoj3sw/Q8LSNSPpey9v
 j971lITc1lhkiKFau0mETjdoBJ8Ac8WkS+yHjC/ZkQvLO+SgjUBv8/xd1
 FC3H5ikEkpGhjHOjaae6l2MI4BFCdD6gtNUwx90bRXFpB3nxWq+pb3NAq w==;
IronPort-SDR: 0BsXhligtE6TpCXcHuWvqZJ39zFFuymFx7Eb53kKqNgm8sDIMEAymxlymPLv/xb+0/jzczQLpd
 dTpiXZPm5GVcbpoABOclqPVKjY+2qVOzMJRQQ4nPB2XH16BZ4kC7e/ysIOq+gxdaANptZ1ejPd
 Bpt+Zni04NqYmeF5VxIlVCM1qTcAjStbYFPGwCVFqkRe68qCOS7t+2PZvsoKW4SO3JxWcbH9v3
 Xtg2EM2vTc6UHiBtg9Af2zBGYk/ni/BhPstASqg9SoyPdVpvdrWsYooaK8VbMH7VOkKMeIJAR9
 2Y0=
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="84849112"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 22:26:54 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 22:26:43 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Tue, 23 Jun 2020 22:26:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZ7f/P+GAtbwg6CmyOFBah0abN/aw138fTp4J85YNB7SLU9Cip4n0RwDRWUg0buU9Fkhg5q0IQbRUNzLyWHGg9phYBmYg6iZNnOQNii+nWAzpq1NbFPzhE6GimBIMl4dtsjMSYRb+x9pldifiAbJGYUEhAh1oTLLImU8B9mPjuniSXmFav98TqrcBLbLzwN//iWjfa2UYgfnWhfiJz0XgPmCqHjDSozmsDpzDMDIlLeBqE2tWPclM+SIVbgggC3w1Bb5zl76V4ZZI4ukZ21HmQDOF2cI1gCGUk6K70fs6IFmAsanf8hJ4rKw/my+uO+qFiC2F/w/iUrkn540cyH3tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LrzntrRwfjCXTjX+UqjjsyA1zUOXikw7ngW+KngNUfM=;
 b=AXY+D4oOw1QJ0NmxW94ZvaAi1zmD73+q/9DOIF5uvjgloo+TsRGBwqOJQNpHYMkGMUU23kFZ1sCsj/4j1MF6yxY627kLPAW3YLK4GK3CJBWmHh8ej75NPcOokQDDr+bOkk26eTlqeSCneCOPEcPA6iaUYEOoAo+w465ebyXtzHmXKraain6cNkjUHT2qe1S74F2kdHA4saGIioxtv6/C2OnXus1Si3v2VkswhYZtujqP/r8jogLHAqMUVk9b/dWqDk8yLUkbgKzuJXskyHt3ieE0N9MEvsBbhA6oi6Lst/J9Q6vfSnow8pMBpUugtlv5XvofXjSsZUxW15Z9XNvMcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LrzntrRwfjCXTjX+UqjjsyA1zUOXikw7ngW+KngNUfM=;
 b=jXRNZnpJb8v1cSgcMYjdqlxuhHdvXXX5OzfWhHOWkf7G6aQRc0dLr3hI6i1sHz65UYgQoXJWQawQzMQXZdUm2vMa4lycWD3TlsiOa6Z4+uhDZZaKuDwU9G3Qh6LDPIHUqE2LtE+wow9NM89UMfhTwao05VyyKdnJMyef3kCFSPs=
Received: from MN2PR11MB4030.namprd11.prod.outlook.com (2603:10b6:208:156::32)
 by MN2PR11MB3598.namprd11.prod.outlook.com (2603:10b6:208:f0::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Wed, 24 Jun
 2020 05:26:50 +0000
Received: from MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed]) by MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed%7]) with mapi id 15.20.3109.027; Wed, 24 Jun 2020
 05:26:50 +0000
From: <Ajay.Kathat@microchip.com>
To: <lkp@intel.com>, <linux-wireless@vger.kernel.org>
Subject: Re: [PATCH v7 17/17] wilc1000: add Makefile and Kconfig files for
 wilc1000 compilation
Thread-Topic: [PATCH v7 17/17] wilc1000: add Makefile and Kconfig files for
 wilc1000 compilation
Thread-Index: AQHWSU15j3LzKe0p40qXGuHZhF86hqjmSUqAgAD0N4A=
Date: Wed, 24 Jun 2020 05:26:49 +0000
Message-ID: <d9ab0945-f993-c12e-bfcf-d1467b2b683b@microchip.com>
References: <20200623110000.31559-18-ajay.kathat@microchip.com>
 <202006232255.SJ9vbMlt%lkp@intel.com>
In-Reply-To: <202006232255.SJ9vbMlt%lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [49.207.200.183]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 491a00e2-6f68-4d09-a1a5-08d817ff3251
x-ms-traffictypediagnostic: MN2PR11MB3598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB35980C720C8C55D3A7DE9A65E3950@MN2PR11MB3598.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3eXIXkbt6iV0f3uGZ0nNOj0IVnR7fcoLcEIRDA4O1H161FyNHfYulJWrJLTawbYA3nLBpdAquICxAbfz0sDTer0JQbtc6t88F5zK2gW16yTrolAdj05E96EdL4rzCSRW5498eTo1LuaULjJrwWJExKpHziinnRy3R5PBZrPX4uNBdqjcTEVRJIsv+YhOPSd55bzUij9KC2lUuYr/Cl65JxOnLHG4SEumICrewvaNHlCA7wm7AEmZ/DNlQLlrcfz47iVUDPLLtx5UqIwa1mSTv6aHbyVnoyd3iC1YiBhJGDLTW9Z/5KABpiOnxzS4wRDE2HYx6ejl5MOL1/T4rym9W/31/gYrFurAwjEqAD7L+8JN9FMZJbJBu/ZGiyytmYyuB4d9+6YosbfwKKdGtM456TfSl5+MiGEThWk26J5+FTjwaWCXbshptlbE+rYrqrsyXOn2cCLhI6nM4uXepyyYFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4030.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(136003)(366004)(39860400002)(346002)(71200400001)(66446008)(64756008)(66556008)(2616005)(316002)(66476007)(31686004)(8936002)(5660300002)(31696002)(8676002)(6512007)(91956017)(76116006)(86362001)(66946007)(4326008)(26005)(107886003)(54906003)(55236004)(83380400001)(110136005)(966005)(186003)(478600001)(2906002)(6486002)(83080400001)(36756003)(53546011)(6506007)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 9BkAOVocClnJ3h0ZbnCVMOv1TrhZosdspUsAQilc91ce5slCUB9lr1iPjTUzsjIQpNGY3HVic/RC5Og1G3B8U/smhLSnfK1F3o7UAQx372ap2PKfTFBxZvPCNUJQjIA3gMGfeI/vkcau0xr/fVcR4DQsEoe02uUxo3FO+lfPfJdvaZYPWv/AXeLWynu2m1uxX86lUjJCG0eVs6+hK10HfmMoQUkmWxBK4o/Lu5EWW3is24hunKFIk4tFPB2iyiOWR+UFmATmzb24LW7kaOmkBTYs+WtTcdnfygWeeY1vPhmJ9XdtQu/YZL4PpzbnkLnQ2kY7fqOg8NiKvo1RrvSGech5VLj6PUt0kCuMd+RD8axrRWWcBY7xtsq/uwv82bLXdqXd9PfoZIlhZZQQiDAmtYXhewNaJ/6H9gFQfBifizmdH6I/0IpFyv7BgWI8qNpgryVdBbTZkMWuJHPdECZxzYmEAvXha0VkiFdTNDYMS+tuxvGwWf8F+VWw68oU8dHM
Content-ID: <FDEAF570C4AADD4A8AEE583AB544365E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4030.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 491a00e2-6f68-4d09-a1a5-08d817ff3251
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 05:26:49.9735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SJpbkmmpkbUcqa05Ze+SeuydB2zDge3GIqSGrTFCZGXjqCSVoDwsZYxXPuRIRBaNFG7ctEkzSkBbB8sl6iJTLmhGdeYjN/Kzrju3FG7iybU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3598
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
Cc: devel@driverdev.osuosl.org, Venkateswara.Kaja@microchip.com,
 kbuild-all@lists.01.org, gregkh@linuxfoundation.org,
 Nicolas.Ferre@microchip.com, johannes@sipsolutions.net,
 Sripad.Balwadgi@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 23/06/20 8:22 pm, kernel test robot wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Hi,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on a15a20acc980342c97d804c5fae1cfc0cd7712a9]
> 
> url:    https://github.com/0day-ci/linux/commits/Ajay-Kathat-microchip-com/wilc1000-move-out-of-staging/20200623-190333
> base:    a15a20acc980342c97d804c5fae1cfc0cd7712a9
> config: ia64-allmodconfig (attached as .config)
> compiler: ia64-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=ia64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    drivers/net/wireless/microchip/wilc1000/mon.c: In function 'wilc_wfi_init_mon_interface':
>>> drivers/net/wireless/microchip/wilc1000/mon.c:232:2: warning: 'strncpy' specified bound 16 equals destination size [-Wstringop-truncation]
>      232 |  strncpy(wl->monitor_dev->name, name, IFNAMSIZ);
>          |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Though replacing 'strncpy' with 'strlcpy' will help to suppress this
warning but not sure if its true alarm because next line sets NULL
termination for string.
I agree 'strlcpy' is better candidate here and reduces one extra line.

> 
> vim +/strncpy +232 drivers/net/wireless/microchip/wilc1000/mon.c
> 
> daf8b5f14a7066 Ajay Singh 2020-06-23  216
> daf8b5f14a7066 Ajay Singh 2020-06-23  217  struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
> daf8b5f14a7066 Ajay Singh 2020-06-23  218                                              const char *name,
> daf8b5f14a7066 Ajay Singh 2020-06-23  219                                              struct net_device *real_dev)
> daf8b5f14a7066 Ajay Singh 2020-06-23  220  {
> daf8b5f14a7066 Ajay Singh 2020-06-23  221       struct wilc_wfi_mon_priv *priv;
> daf8b5f14a7066 Ajay Singh 2020-06-23  222
> daf8b5f14a7066 Ajay Singh 2020-06-23  223       /* If monitor interface is already initialized, return it */
> daf8b5f14a7066 Ajay Singh 2020-06-23  224       if (wl->monitor_dev)
> daf8b5f14a7066 Ajay Singh 2020-06-23  225               return wl->monitor_dev;
> daf8b5f14a7066 Ajay Singh 2020-06-23  226
> daf8b5f14a7066 Ajay Singh 2020-06-23  227       wl->monitor_dev = alloc_etherdev(sizeof(struct wilc_wfi_mon_priv));
> daf8b5f14a7066 Ajay Singh 2020-06-23  228       if (!wl->monitor_dev)
> daf8b5f14a7066 Ajay Singh 2020-06-23  229               return NULL;
> daf8b5f14a7066 Ajay Singh 2020-06-23  230
> daf8b5f14a7066 Ajay Singh 2020-06-23  231       wl->monitor_dev->type = ARPHRD_IEEE80211_RADIOTAP;
> daf8b5f14a7066 Ajay Singh 2020-06-23 @232       strncpy(wl->monitor_dev->name, name, IFNAMSIZ);
> daf8b5f14a7066 Ajay Singh 2020-06-23  233       wl->monitor_dev->name[IFNAMSIZ - 1] = 0;
> daf8b5f14a7066 Ajay Singh 2020-06-23  234       wl->monitor_dev->netdev_ops = &wilc_wfi_netdev_ops;
> daf8b5f14a7066 Ajay Singh 2020-06-23  235       wl->monitor_dev->needs_free_netdev = true;
> daf8b5f14a7066 Ajay Singh 2020-06-23  236
> daf8b5f14a7066 Ajay Singh 2020-06-23  237       if (register_netdevice(wl->monitor_dev)) {
> daf8b5f14a7066 Ajay Singh 2020-06-23  238               netdev_err(real_dev, "register_netdevice failed\n");
> daf8b5f14a7066 Ajay Singh 2020-06-23  239               return NULL;
> daf8b5f14a7066 Ajay Singh 2020-06-23  240       }
> daf8b5f14a7066 Ajay Singh 2020-06-23  241       priv = netdev_priv(wl->monitor_dev);
> daf8b5f14a7066 Ajay Singh 2020-06-23  242       if (!priv)
> daf8b5f14a7066 Ajay Singh 2020-06-23  243               return NULL;
> daf8b5f14a7066 Ajay Singh 2020-06-23  244
> daf8b5f14a7066 Ajay Singh 2020-06-23  245       priv->real_ndev = real_dev;
> daf8b5f14a7066 Ajay Singh 2020-06-23  246
> daf8b5f14a7066 Ajay Singh 2020-06-23  247       return wl->monitor_dev;
> daf8b5f14a7066 Ajay Singh 2020-06-23  248  }
> daf8b5f14a7066 Ajay Singh 2020-06-23  249
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
