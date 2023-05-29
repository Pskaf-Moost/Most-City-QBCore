QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 800
            },
        },
	},

    ['catcafe'] = {
		label = 'Cat Cafe',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 500 },
			['1'] = { name = 'Novice', payment = 750 },
			['2'] = { name = 'Experienced', payment = 1000 },
			['3'] = { name = 'Advanced', payment = 1250 },
			['4'] = { name = 'Manager', isboss = true, payment = 1500 },
        },
	},
	['police'] = {
		label = 'Law Enforcement',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 500
            },
			['1'] = {
                name = 'Officer',
                payment = 750
            },
			['2'] = {
                name = 'Sergeant',
                payment = 1000
            },
			['3'] = {
                name = 'Lieutenant',
                payment = 1250
            },
			['4'] = {
                name = 'Chief',
				isboss = true,
                payment = 1500
            },
        },
	},
    ['cyberbar'] = {
		label = 'Cyber Bar',
		defaultDuty = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 500 },
			['1'] = { name = 'Novice', payment = 750 },
			['2'] = { name = 'Experienced', payment = 1000 },
			['3'] = { name = 'Advanced', payment = 1250 },
			['4'] = { name = 'Manager', isboss = true, payment = 1500 },
        },
	},
	['ambulance'] = {
		label = 'EMS',
        type = 'ems',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 500
            },
			['1'] = {
                name = 'Paramedic',
                payment = 750
            },
			['2'] = {
                name = 'Doctor',
                payment = 1000
            },
			['3'] = {
                name = 'Surgeon',
                payment = 1250
            },
			['4'] = {
                name = 'Chief',
				isboss = true,
                payment = 1500
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'House Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Broker',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 500
            },
			['1'] = {
                name = 'Driver',
                payment = 750
            },
			['2'] = {
                name = 'Event Driver',
                payment = 1000
            },
			['3'] = {
                name = 'Sales',
                payment = 1250
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
    ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 500
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 500
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 750
            },
			['2'] = {
                name = 'Business Sales',
                payment = 1000
            },
			['3'] = {
                name = 'Finance',
                payment = 1250
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 500
            },
			['1'] = {
                name = 'Novice',
                payment = 750
            },
			['2'] = {
                name = 'Experienced',
                payment = 1000
            },
			['3'] = {
                name = 'Advanced',
                payment = 1250
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 1000
            },
        },
	},
    ['mayor'] = {
		label = 'Maire',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Maire',
                payment = 3000
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 500
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 1200
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 50
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 50
            },
        },
	},
}
